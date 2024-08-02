#include<stdio.h>
#include<string.h>
#include<sys/types.h>
#include<fcntl.h>
#include<sys/stat.h>
#include<unistd.h>

int main()
{

	int fd;

	char read_b[1024];
	char write_b[1024];

	fd=open("/dev/u2kdriver",O_RDWR);
	read(fd,read_b,1024);
	printf("%s",read_b);
	printf("Write a string to write:");
	scanf("%s",write_b);
	write(fd,write_b,1024);
	return 0;
}

