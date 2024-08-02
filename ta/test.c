#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>

int main()
{
	char write_buff[50];
	char read_buff[50];
	int bytes_read, bytes_written;

	int fd = open("/dev/pooji_dynamic_cdrv", O_RDWR);
	if (fd < 0) {
		perror("open fails\n");
		return 1;
	}
	int ch;
	while(ch!=3) {
		printf("Enter Choice: 1.write into kernel  2.read from kernel 3.exit: ");
		scanf("%d",&ch);
		switch(ch) {
			case 1: printf("Enter Message: ");
				scanf(" %[^\n]s", write_buff);

				bytes_written = write(fd, write_buff, strlen(write_buff));
				if (bytes_written < 0) {
					perror("write fails\n");
					close(fd);
					return 1;
				}
				//bytes_read = read(fd, read_buff, sizeof(read_buff) - 1);
				break;
		
			case 2: bytes_read = read(fd, read_buff, sizeof(read_buff) - 1);
				if (bytes_read < 0) {
					perror("read fails\n");
					close(fd);
					return 1;
				}
				printf("Data read from driver: %s\n", read_buff);
				break;
			default:printf("Enter valid choice\n");
		}
	}
	//lseek(fd, 5, SEEK_SET);
	close(fd);
	return 0;
}
