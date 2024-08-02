#include<stdio.h>
#include<string.h>
#include<unistd.h>
#include<fcntl.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<stdlib.h>

int main()
{

int fd,c;
char read_buff[500];
char write_buff[500];

fd=open("/dev/jaydriver",O_RDWR);
printf("Enter your choice 1.Write to the kernel\n 2.Read from the kernel");
scanf("%d",&c);

switch(c)
{
	case 1:
		printf("enter a string to write\n");
		scanf("%s",write_buff);
		write(fd,write_buff,strlen(write_buff));
		break;
	case 2:
		int a;
		a=read(fd,read_buff,500);
		printf("%d",a);
		printf("hello\n");
		break;
	default:
		printf("Enter right choice");
		break;
}
	close(fd);
	return 0;
}
