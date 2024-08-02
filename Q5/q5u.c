#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<unistd.h>


int main()
{
	int fd;
	char s[1024];
	char r[1024];
	fd=open("/dev/my_device2",O_RDWR);
	
	strcpy(s,"Mirafra Technologies");
	write(fd,s,strlen(s));
	
	read(fd,r,strlen(s));
	printf("from kernel %s\n",r); 
	//strcpy(s,"technology");
	//write(fd,s,strlen(s));
	
	close(fd);
	return 0;
}
