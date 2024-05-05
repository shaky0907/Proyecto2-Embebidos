#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>

#define CHARACTER_DEVICE_DRIVER_PATH "/dev/pci_capture_chr_dev-0"
#define WR_VALUE _IOW('a','a',int32_t *)
#define RD_VALUE _IOR('b','b',int32_t *)

int main()
{
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
    int32_t size_file = 5000000; 

    buffer_i = 0x18;
    char final_buffer[size_file];

    for (int i=0; i<size_file; i++){

        buffer = buffer_i;
        ioctl(fd, RD_VALUE, (int32_t*) &buffer);
        //printf("Read test_register: 0x%x\n", buffer);
            
        int8_t buffer_corrected = buffer;
	    char buffer_char = buffer_corrected;

        final_buffer[i] = buffer_char;

        //printf("Read buffer pos%d: 0x%x\n", i, buffer_corrected);
        buffer_i += 0x4;
    }

    
    


    //int32_t value = 0xCAFECAFE;
    //ioctl(fd, WR_VALUE, (int32_t *) &value);
    //printf("Write test_register succesfully done\n");

    printf("*********************************\n");
    printf(" >>> Closing character device\n");
    printf("*********************************\n");
    close(fd);
}