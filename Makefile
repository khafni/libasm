.PHONY: clean all re fclean
NAME = libasm.a
CFLAGS = -Wall -Wextra -Werror
SRCS = ft_strlen.s\
ft_strcpy.s\
ft_strdup.s\
ft_strcmp.s\
ft_write.s\
ft_read.s 

OBJS = $(SRCS:.s=.o)

all:$(NAME)
$(NAME):
	gcc $(CFLAGS) -c $(SRCS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)
clean:
	rm -f $(OBJS)	
fclean: clean
	rm -f $(NAME)
re: fclean all