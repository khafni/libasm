.PHONY: clean all re fclean
NAME = libasm.a
SRCS = ft_strlen.s\
ft_strcpy.s\
ft_strdup.s\
ft_strcmp.s\
ft_write.s\
ft_read.s 

OBJS = $(SRCS:.s=.o)

all:$(NAME)
$(NAME):
	nasm -f macho64 ft_read.s
	nasm -f macho64 ft_write.s
	nasm -f macho64 ft_strdup.s
	nasm -f macho64 ft_strcpy.s
	nasm -f macho64 ft_strlen.s
	nasm -f macho64 ft_strcmp.s
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)
clean:
	rm -f $(OBJS)	
fclean: clean
	rm -f $(NAME)
re: fclean all