#* ************************************************************************** *#
#*                                                                            *#
#*                                                        :::      ::::::::   *#
#*   Makefile                                           :+:      :+:    :+:   *#
#*                                                    +:+ +:+         +:+     *#
#*   By:  <>                                        +#+  +:+       +#+        *#
#*                                                +#+#+#+#+#+   +#+           *#
#*   Created: 2016/08/30 14:49:48 by                   #+#    #+#             *#
#*   Updated: 2016/11/06 16:15:59 by                  ###   ########.fr       *#
#*                                                                            *#
#* ************************************************************************** *#

SRC_FILES = ft_putchar.c ft_putstr.c ft_strlen.c ft_putchar_fd.c \
	ft_putstr_fd.c ft_strnew.c ft_strdel.c ft_memdel.c ft_memalloc.c \
	ft_strclr.c ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c \
	ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c \
	ft_strsplit.c ft_itoa.c ft_putendl.c ft_putnbr.c ft_putendl_fd.c \
	ft_putnbr_fd.c ft_tolower.c ft_toupper.c ft_isprint.c ft_isascii.c \
	ft_isalnum.c ft_isalpha.c ft_isdigit.c ft_atoi.c ft_strncmp.c \
	ft_strcmp.c ft_strstr.c ft_strnstr.c ft_strdup.c ft_strcpy.c \
	ft_strncpy.c ft_strcat.c ft_strncat.c ft_strlcat.c ft_memcpy.c \
	ft_strchr.c ft_strrchr.c ft_memset.c ft_bzero.c ft_memccpy.c \
	ft_memmove.c ft_memchr.c ft_memcmp.c ft_lstnew.c ft_lstdelone.c \
	ft_lstdel.c ft_lstadd.c ft_lstiter.c
SRC_FOLDER = ./srcs/
INCLUDE_FOLDER = ./includes
OBJ = $(SRC_FILES:.c=.o)
NAME = libft.a

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $@ $^
	ar -s $@

%.o: $(addprefix $(SRC_FOLDER), %.c)
	gcc -Wall -Werror -Wextra -c -o $@ $< -I $(INCLUDE_FOLDER)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: clean
