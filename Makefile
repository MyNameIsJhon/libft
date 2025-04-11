SRC			=  ft_atoi.c \
			   ft_bzero.c \
			   ft_calloc.c \
			   ft_isalnum.c \
			   ft_isalpha.c \
			   ft_isascii.c \
			   ft_isdigit.c \
			   ft_isincharset.c \
			   ft_islower.c \
			   ft_isprint.c \
			   ft_isupper.c \
			   ft_itoa.c \
			   ft_memchr.c \
			   ft_memcmp.c \
			   ft_memcpy.c \
			   ft_memmove.c \
			   ft_memset.c \
			   ft_putstr_fd.c \
			   ft_putchar_fd.c \
			   ft_putendl_fd.c \
			   ft_putnbr_fd.c \
			   ft_revstr.c \
			   ft_split.c \
			   ft_strchr.c \
			   ft_strdup.c \
			   ft_striteri.c \
			   ft_strjoin.c \
			   ft_strlcat.c \
			   ft_strlcpy.c \
			   ft_strlen.c \
			   ft_strmapi.c \
			   ft_strncmp.c \
			   ft_strnstr.c \
			   ft_strrchr.c \
			   ft_strtrim.c \
			   ft_substr.c \
			   ft_tolower.c \
			   ft_toupper.c \
			   ft_lstnew.c \
			   ft_lstlast.c \
			   ft_lstsize.c \
				ft_lstadd_front.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c 

SRCS		= ${addprefix ${PRE}, ${SRC}}

OBJS		= ${SRCS:.c=.o}

PRE			= ./srcs/

HEAD		= ./includes/

NAME		= libft.a

AR			= ar rc

RM			= rm -f

LIB			= ranlib

GCC			= cc

CFLAGS		= -Wall -Wextra -Werror -O2

all:		${NAME}

.c.o:
			${GCC} ${CFLAGS} -c -I ${HEAD} $< -o ${<:.c=.o}

${NAME}:	${OBJS}
			${AR} ${NAME} ${OBJS}
			${LIB} ${NAME}

clean:
			rm -f ${OBJS}

fclean:		clean
			rm -f ${NAME}

re:			fclean all

.PHONY:		all clean fclean re ${NAME}
