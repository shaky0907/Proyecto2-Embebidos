#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "minunit.h"
#include <sys/ioctl.h>

#define CHARACTER_DEVICE_DRIVER_PATH "/dev/pci_capture_chr_dev-0"
#define WR_VALUE _IOW('a','a',int32_t *)
#define RD_VALUE _IOR('b','b',int32_t *)




int32_t test_read(){
    
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

    return buffer;

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

MU_TEST(test_read_after_write) {
    mu_assert_int_eq(0x0, test_read(0x0));
}


MU_TEST_SUITE(test_suite) {
    MU_RUN_TEST(test_read_after_write);
}


int main()
{
    MU_RUN_SUITE(test_suite);
    MU_REPORT();
    return MU_EXIT_CODE;
    
}