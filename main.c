#include <stdio.h>
#include <string.h>
#include <stdlib.h>
//void say_hi();
void start(void);
int ft_strlen(char *len);
char *ft_strcpy(char * dst, const char * src);
char *ft_strdup(const char *s1);
int main()
{
    char *dst = malloc(10);
    char *src = strdup("fuck");
    //printf("%s", ft_strcpy(dst, src));
    printf("%s", ft_strdup("smth wow"));
    return (0);
}