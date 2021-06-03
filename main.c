#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
//void say_hi();
void start(void);
int ft_strlen(char *len);
char *ft_strcpy(char * dst, const char * src);
char *ft_strdup(const char *s1);
int ft_write(int fd, char *buffer, int len);
int ft_strcmp(char *s1, char *s2);
int main()
{
    //char *dst = malloc(10);
    //char *src = strdup("fuck");
    //printf("%s", ft_strcpy(dst, src));
    //printf("%s", ft_strdup("smth wow"));
    //ft_write(1, "fuck", 5);
    printf("%d\n", ft_strcmp("arc", "arc"));
    printf("%d", strcmp("arc", "arc"));
    return (0);
}