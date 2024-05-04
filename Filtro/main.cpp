#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


#pragma pack(2) // Asegura que no haya relleno entre los campos de la estructura

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
void negative_conversion(unsigned char *data, BMPHeader header, BMPInfoHeader infoHeader){
    char newfilename[] = "Negative.bmp";
    FILE *newfile = fopen(newfilename, "wb");
    if (!newfile) {
        printf("No se pudo crear el archivo %s\n", newfilename);
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
void blur_conversion(unsigned char *data, BMPHeader header, BMPInfoHeader infoHeader) {
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
    char newfilename[] = "Blurred.bmp";
    FILE *newfile = fopen(newfilename, "wb");
    if (!newfile) {
        printf("No se pudo crear el archivo %s\n", newfilename);
        return;
    }

    // Escribir los encabezados y los datos de píxeles en el archivo
    fwrite(&header, sizeof(BMPHeader), 1, newfile);
    fwrite(&infoHeader, sizeof(BMPInfoHeader), 1, newfile);
    fwrite(newdata, 1, infoHeader.imageSize, newfile);

    fclose(newfile);
    free(newdata);
}

int main() {
    //Abrir el archivo
    char filename[] = "/Users/marcelotruquemontero/CLionProjects/untitled3/goku.bmp";
    FILE *file = fopen(filename, "rb");
    if (!file) {
        printf("No se pudo abrir el archivo %s\n", filename);
        return 1;
    }

    //Obtener información archivo (Esta parte eventualmente viene del PCI)
    BMPHeader header;
    fread(&header, sizeof(BMPHeader), 1, file);

    BMPInfoHeader infoHeader;
    fread(&infoHeader, sizeof(BMPInfoHeader), 1, file);

    unsigned char *data = (unsigned char *)malloc(infoHeader.imageSize);
    fread(data, 1, infoHeader.imageSize, file);

    //Cerrar el archivo
    fclose(file);

    //Filtro del archivo a negativo
    negative_conversion(data,header,infoHeader);

    //Filtro del archivo a suavizado
    blur_conversion(data,header,infoHeader);

    free(data);

    return 0;
}
