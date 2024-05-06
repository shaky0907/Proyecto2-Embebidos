#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>

#define CHARACTER_DEVICE_DRIVER_PATH "/dev/pci_capture_chr_dev-0"
#define WR_VALUE _IOW('a','a',int32_t *)
#define RD_VALUE _IOR('b','b',int32_t *)
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

int main() {
    int fd;
    const char *chr_dev_name = CHARACTER_DEVICE_DRIVER_PATH;

    printf("*********************************\n");
    printf(">>> Opening character device\n");
    fd = open(chr_dev_name, O_RDWR);
    if (fd < 0) {
        printf("Cannot open character device file...\n");
        return 0;
    }
    printf("*********************************\n");

    int32_t buffer, buffer_i;
    int32_t size_file = 120138; 

    buffer_i = 0x18;
    unsigned char * file=(unsigned char *) malloc(size_file);



    for (int i=0; i<size_file; i++){

        buffer = buffer_i;
        ioctl(fd, RD_VALUE, (int32_t*) &buffer);
            
        int8_t buffer_corrected = buffer;
	    char buffer_char = buffer_corrected;

        file[i] = buffer_char;

        //printf("Read buffer pos%d: %c\n", i, buffer_char);
        buffer_i += 0x1;
    }

    printf("*********************************\n");
    printf(" >>> Closing character device\n");
    printf("*********************************\n");
    close(fd);


    //Obtengo la información o headers de los archivos
    BMPHeader header;
    BMPInfoHeader infoHeader;
    //Selecciona de la cadena los caracteres que son específicamente los headers, es más que nada una asignación
    readheaders(&header,&infoHeader,file);

    //Ya sabiendo el tamaño de la imagen se reserva la memoria de los pixeles RGB
    unsigned char *data = (unsigned char *)malloc(infoHeader.imageSize);
    //Se lee cada pixel RGB de la imagen
    readdata(data,file,infoHeader.imageSize);


    //Filtro del archivo a negativo
    negative_conversion(data,header,infoHeader);

    //Filtro del archivo a suavizado
    blur_conversion(data,header,infoHeader);

    free(data);
    free(file);

    return 0;
}
