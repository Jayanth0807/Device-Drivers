#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<unistd.h>
#include<fcntl.h>

char s[1024];
char a[1024];
char b[1024];
char x[1024];
int l=0;

int main()
{
	int fd;
	fd=open("/dev/jay_2",O_RDWR);
	if(fd<0)
	{
		printf("Cannot open the file \n");
		exit(0);
	}
	
	strcpy(s,"Mirafra");
	write(fd,s,strlen(s));
	//read(fd,s,sizeof(s)-1);
	l= l+strlen(s);
	
	strcpy(a,"technologies");
	write(fd,a,strlen(a));
	//read(fd,s,sizeof(s)-1);
	l= l+strlen(a);
	
	strcpy(b,"hyderbad");
	write(fd,b,strlen(b));
	//read(fd,s,sizeof(s)-1);
	l= l+strlen(b);
	
	char x[l+1];
	read(fd,x,sizeof(x)-1);
	printf("from kernel to user %s\n",x);
	close(fd);
	return 0;
}
	
