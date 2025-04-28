NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

AR = ar rcs
RM = rm -f

SRC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
	  ft_isascii.c ft_isdigit.c ft_isincharset.c ft_islower.c \
	  ft_isprint.c ft_isupper.c ft_itoa.c ft_memchr.c ft_memcmp.c \
	  ft_memcpy.c ft_memmove.c ft_memset.c ft_putstr_fd.c \
	  ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_revstr.c \
	  ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c \
	  ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c \
	  ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c \
	  ft_putnbr.c ft_putchar.c ft_putnbr_hex.c

BONUS_SRC = ft_lstadd_front_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c ft_lstlast_bonus.c \
			ft_lstnew_bonus.c ft_lstsize_bonus.c

OBJS = $(SRC:.c=.o)
BONUS_OBJS = $(BONUS_SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

bonus:
	$(MAKE) OBJS="$(OBJS) $(BONUS_OBJS)" $(NAME)

so:
	$(CC) -nostartfiles -fPIC $(CFLAGS) -c $(SRC) $(BONUS_SRC)
	$(CC) -nostartfiles -shared -o libft.so $(OBJS) $(BONUS_OBJS)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean: clean
	$(RM) $(NAME) libft.so

re: fclean all

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: all clean fclean re bonus
