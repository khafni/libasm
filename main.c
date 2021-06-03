#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <unistd.h>
//void say_hi();
;
int ft_strlen(char *len);
char *ft_strcpy(char * dst, const char * src);
char *ft_strdup(const char *s1);
int ft_write(int fd, char *buffer, int len);
int ft_read(int fd, char *buffer, int len);
int ft_strcmp(char *s1, char *s2);

int     main()
{
    printf("ft_strlen: %d\n", ft_strlen("123"));
    printf("strlen: %lu\n", strlen("123"));
    printf("\n--------------------------------------\n");
    printf("ft_strcpy: |%s|\n", ft_strcpy(malloc(5), "1234"));
    printf("strcpy: |%s|\n", strcpy(malloc(5), "1234"));
    printf("\n--------------------------------------\n");
    printf("ft_strcmp: %d\n", ft_strcmp("4321", "1234"));
    printf("strcmp: %d\n", strcmp("4321", "1234"));
    printf("\n--------------------------------------\n");
    printf("ft_strdup: |%s|\n", ft_strdup("a word of wisedom"));
    printf("strdup: |%s|\n", strdup("a word of wisedom"));
    printf("\n--------------------------------------\n");
    ft_write(1, "a string", 8);
    printf("\n--------------------------------------\n");
    ft_write(-1, "another string", 14);
    perror("erro: "); 
    write(-1, "another string", 14);
    perror("erro: "); 
    printf("\n--------------------------------------\n");
    return (0);
}