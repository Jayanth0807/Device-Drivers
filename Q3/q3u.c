#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<fcntl.h>
#include<unistd.h>

int main()
{
	int fd;
	char buf[100];
	char sub[100];
	char temp[150];
	char r_buf[100];
	int count=0,i;
	int j=0;
	int pos;
	fd=open("/dev/device_1",O_RDWR);
	if(fd<0)
	{
		printf("Cannot open the file");
	}
	printf("enter the string:");
	scanf("%[^s]\n",buf);
	
	printf("enter the substring \n");
	scanf("%[^s]\n",sub);
	
	printf("Enter the position:");
	scanf("%d",&pos);
	
	for(i=0;i<pos;i++)
	{
		temp[j++]=buf[i];
	}
	
	for(i=0;sub[i]!='\0';i++)
	{
		temp[j++]=buf[i];
	}
	temp[j]='\0';
	lseek(fd,0,SEEK_SET);
	
	write(fd,temp,j);	
	read(fd,r_buf,sizeof(r_buf)-1);
	printf("%s\n",r_buf);
	close(fd);
	return 0;
}
