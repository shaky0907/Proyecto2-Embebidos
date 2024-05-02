    #define STB_IMAGE_IMPLEMENTATION
    #define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>
//#include "stb_image.h"
#include "stb_image_write.h"

// Function to apply a negative filter to the image
    void apply_negative(uint8_t *image, int width, int height, int channels) {
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width * channels; j++) {
                image[i * width * channels + j] = 255 - image[i * width * channels + j];
            }
        }
    }

// Function to apply a simple blur filter to the image
    void apply_blur(uint8_t *image, int width, int height, int channels) {
        float kernel[3][3] = {
                {1.0/16, 2.0/16, 1.0/16},
                {2.0/16, 4.0/16, 2.0/16},
                {1.0/16, 2.0/16, 1.0/16}
        };

        uint8_t *temp_image = (uint8_t *)malloc(width * height * channels * sizeof(uint8_t));
        memcpy(temp_image, image, width * height * channels * sizeof(uint8_t));

        for (int y = 1; y < height - 1; y++) {
            for (int x = 1; x < width - 1; x++) {
                for (int c = 0; c < channels; c++) {
                    float sum = 0.0;
                    for (int i = -1; i <= 1; i++) {
                        for (int j = -1; j <= 1; j++) {
                            sum += kernel[i + 1][j + 1] * temp_image[((y + i) * width + (x + j)) * channels + c];
                        }
                    }
                    image[(y * width + x) * channels + c] = (uint8_t)sum;
                }
            }
        }

        free(temp_image);
    }

    int main() {
        char *input_file = "/Users/marcelotruquemontero/CLionProjects/untitled3/goku.bmp";
        char *output_file_negative = "output_negative.bmp";
        char *output_file_blur = "output_blur.bmp";

        int width, height, channels;
        uint8_t *image = stbi_load(input_file, &width, &height, &channels, 0);
        if (!image) {
            printf("Error loading image.\n");
            return 1;
        }

        // Creating a copy of the original image for blur
        uint8_t *image_blur = (uint8_t*) malloc(width * height * channels * sizeof(uint8_t));
        memcpy(image_blur, image, width * height * channels * sizeof(uint8_t));

        // Applying negative filter
        apply_negative(image, width, height, channels);
        stbi_write_bmp(output_file_negative, width, height, channels, image);

        // Applying blur filter
        apply_blur(image_blur, width, height, channels);

        // Combine blurred image with original to get smoothed result
        for (int i = 0; i < width * height * channels; i++) {
            int diff = (int)image[i] - (int)image_blur[i];
            image[i] = (uint8_t)((int)image[i] - diff);
        }

        stbi_write_bmp(output_file_blur, width, height, channels, image);

        // Freeing image data and temporary image
        stbi_image_free(image);
        free(image_blur);

        printf("Filters applied successfully!\n");
        return 0;
    }