#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "unity.h"
#include <sys/ioctl.h>

#define CHARACTER_DEVICE_DRIVER_PATH "/dev/pci_capture_chr_dev-0"
#define WR_VALUE _IOW('a','a',int32_t *)
#define RD_VALUE _IOR('b','b',int32_t *)




void test_read(){
    
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
    int32_t buffer;
    buffer = 0x0;
    ioctl(fd, RD_VALUE, (int32_t*) &buffer);
    TEST_ASSERT_EQUAL(0x4, buffer);
    printf("*********************************\n");
    printf(" >>> Closing character device\n");
    printf("*********************************\n");
    close(fd);

}


void test_write(){

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
    int32_t buffer;
    buffer = 0x4;
    ioctl(fd, WR_VALUE, (int32_t*) &buffer);
    printf("*********************************\n");
    printf(" >>> Closing character device\n");
    printf("*********************************\n");
    close(fd);

}


int main()
{
    test_write();
    UNITY_BEGIN();
    RUN_TEST(test_read);
    return UNITY_END();
    
}