#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<fcntl.h>
#include<unistd.h>

int main()
{

	int fd,c;

	int byte_write,byte_read;

	char w_buf[200],r_buf[200];
	
	fd=open("/dev/jay_cdrv",O_RDWR);
	printf("Enter your choice \n 1.Write to the kernel \n 2.Read from the kernel \n 3.exit");\
	scanf("%d",&c);
	//getchar();
	while(c!=3)
	{
		
	switch(c)
	{
		case 1:
			printf("Enter the data to write \n");
			scanf("%s\n",w_buf);
			getchar();
			byte_write=write(fd,w_buf,strlen(w_buf));
			break;
		case 2:
			byte_read=read(fd,r_buf,sizeof(r_buf)-1);
			printf("%s\n",r_buf);
			break;
		default:
			printf("Enter valid choice");
			break;
	}
	}
		/*printf("Enter the string to write \n");
		scanf("%s\n",w_buf);
		byte_write= (fd,w_buf,strlen(w_buf));
		byte_read= (fd,r_buf,200);
		printf("%d\n",byte_read); */
		
		close(fd);
		return 0;
}

