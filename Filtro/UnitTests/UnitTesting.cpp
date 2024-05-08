//
// Created by Marcelo Truque Montero on 08/05/2024.
//
#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>

#include "stb_image.h"
#include "stb_image_write.h"


// Estructura para el encabezado de un archivo BMP
typedef struct {
    unsigned short type; // Tipo de archivo (debe ser 'BM' para un archivo BMP válido)
    unsigned int size;   // Tamaño del archivo en bytes
    unsigned short reserved1;
    unsigned short reserved2;
    unsigned int offset; // Desplazamiento a los datos de píxeles
}BMPHeader;

// Estructura para el encabezado de información de imagen BMP
typedef struct {
    unsigned int size;         // Tamaño de esta estructura en bytes
    int width;                 // Ancho de la imagen en píxeles
    int height;                // Altura de la imagen en píxeles
    unsigned short planes;     // Número de planos de color (debe ser 1)
    unsigned short bitCount;   // Número de bits por píxel
    unsigned int compression;  // Método de compresión utilizado
    unsigned int imageSize;    // Tamaño de los datos de imagen en bytes
    int xPixelsPerMeter;       // Resolución horizontal en píxeles por metro
    int yPixelsPerMeter;       // Resolución vertical en píxeles por metro
    unsigned int colorsUsed;   // Número de colores en la paleta
    unsigned int colorsImportant; // Número de colores importantes
}BMPInfoHeader;

// Function to apply a negative filter to the image
void negative_conversion(unsigned char *data, BMPHeader header, BMPInfoHeader infoHeader,char *fileName ){
    FILE *newfile = fopen(fileName, "wb");
    if (!newfile) {
        printf("No se pudo crear el archivo %s\n", fileName);
        return;
    }

    unsigned char *newdata = (unsigned char *)malloc(infoHeader.imageSize);

    int pixelCount = infoHeader.width * infoHeader.height;
    for (int i = 0; i < pixelCount * 3; i += 3) {
        unsigned char blue = data[i];
        unsigned char green = data[i + 1];
        unsigned char red = data[i + 2];
        newdata[i] = 255 - blue;
        newdata[i + 1] = 255 - green;
        newdata[i + 2] = 255 - red;
    }
    // Escribir los encabezados y los datos de píxeles en el archivo
    fwrite(&header, sizeof(BMPHeader), 1, newfile);
    fwrite(&infoHeader, sizeof(BMPInfoHeader), 1, newfile);
    fwrite(newdata, 1, infoHeader.imageSize, newfile);

    fclose(newfile);
    free(newdata);
}

// Function to apply a simple blur filter to the image
void blur_conversion(unsigned char *data, BMPHeader header, BMPInfoHeader infoHeader,char* FileName) {
    float kernel[3][3] = {
            {1.0/16, 2.0/16, 1.0/16},
            {2.0/16, 4.0/16, 2.0/16},
            {1.0/16, 2.0/16, 1.0/16}
    };

    unsigned char *newdata = (unsigned char *)malloc(infoHeader.imageSize);

    for (int y = 1; y < infoHeader.height - 1; y++) {
        for (int x = 1; x < infoHeader.width - 1; x++) {
            for (int c = 0; c < 3; c++) {
                float sum = 0.0;
                for (int i = -1; i <= 1; i++) {
                    for (int j = -1; j <= 1; j++) {
                        sum += kernel[i + 1][j + 1] * data[((y + i) * infoHeader.width + (x + j)) * 3 + c];
                    }
                }
                newdata[(y * infoHeader.width + x) * 3 + c] = (uint8_t)sum;
            }
        }
    }

    FILE *newfile = fopen(FileName, "wb");
    if (!newfile) {
        printf("No se pudo crear el archivo %s\n", FileName);
        return;
    }

    // Escribir los encabezados y los datos de píxeles en el archivo
    fwrite(&header, sizeof(BMPHeader), 1, newfile);
    fwrite(&infoHeader, sizeof(BMPInfoHeader), 1, newfile);
    fwrite(newdata, 1, infoHeader.imageSize, newfile);

    fclose(newfile);
    free(newdata);
}

void readheaders(BMPHeader* header, BMPInfoHeader* infoHeader, unsigned char * file){
    header->type=*((unsigned short *)&file[0]);
    header->size=*((unsigned int *)&file[2]);
    header->reserved1=*((unsigned short *)&file[6]);
    header->reserved2=*((unsigned short *)&file[8]);
    header->offset=*((unsigned int *)&file[10]);
    infoHeader->size=*((unsigned int *)&file[14]);
    infoHeader->width=*((int *)&file[18]);
    infoHeader->height=*((int *)&file[22]);
    infoHeader->planes=*((unsigned short*)&file[26]);
    infoHeader->bitCount=*((unsigned short*)&file[28]);
    infoHeader->compression=*((unsigned int *)&file[30]);
    infoHeader->imageSize=*((unsigned int *)&file[34]);
    infoHeader->xPixelsPerMeter=*((int *)&file[38]);
    infoHeader->yPixelsPerMeter=*((int *)&file[42]);
    infoHeader->colorsUsed=*((unsigned int *)&file[46]);
    infoHeader->colorsImportant=*((unsigned int *)&file[50]);
}

void readdata(unsigned char * data, unsigned char * file,int imageSize){
    int cursor=54;
    int amountdataread=0;
    while(true){
        data[amountdataread]=file[cursor];
        if(amountdataread==imageSize){
            break;
        }
        cursor++;
        amountdataread++;
    }
}

void FileReadFilterTesting(){
    /**
     * Revisión de las funciones para interpretar una cadena de caracteres que contiene toda la información del archivo BMP
     * Efectúa el filtrado igualmente con la información extraída de la cadena
     */
    char filename[] = "goku.bmp";
    FILE *file = fopen(filename, "rb");
    if (!file) {
        printf("No se pudo abrir el archivo %s\n", filename);
        return;
    }

    //Obtener información archivo (Esta parte eventualmente viene del PCI)
    unsigned char *BMPimage = (unsigned char *)malloc(270138);
    fread(BMPimage, 270138, 1, file);
    fclose(file);

    //Obtengo la información o headers de los archivos
    BMPHeader header;
    BMPInfoHeader infoHeader;

    //Selecciona de la cadena los caracteres que son específicamente los headers, es más que nada una asignación
    readheaders(&header,&infoHeader,BMPimage);

    //Ya sabiendo el tamaño de la imagen se reserva la memoria de los pixeles RGB
    unsigned char *data = (unsigned char *)malloc(infoHeader.imageSize);
    //Se lee cada pixel RGB de la imagen
    readdata(data,BMPimage,infoHeader.imageSize);

    //Filtro del archivo a negativo
    char UnitTestingNegFile1[] = "UT1_Negative.bmp";
    negative_conversion(data,header,infoHeader,UnitTestingNegFile1);

    //Filtro del archivo a suavizado
    char UnitTestingBlurrFile1[] = "UT1_Blurred.bmp";
    blur_conversion(data,header,infoHeader,UnitTestingBlurrFile1);


    free(data);
    free(BMPimage);

    printf("Filters applied successfully!\n");
}

int main() {
    // Ejecutar las pruebas
    FileReadFilterTesting();

    return 0;
}