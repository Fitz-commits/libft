# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cdelaby <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/15 15:39:16 by cdelaby           #+#    #+#              #
#    Updated: 2020/02/15 15:39:46 by cdelaby          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
FLAGS = -Wall -Werror -Wextra

NAME = libft.a

SRC = ft_atoi.c       ft_isdigit.c    ft_memmove.c    ./str/ft_split.c \
		./str/ft_strlcpy.c    ./str/ft_strnstr.c  ft_bzero.c      ft_isprint.c \
		ft_memset.c    ./str/ft_strchr.c     ./str/ft_strlen.c     ./str/ft_strrchr.c \
		ft_calloc.c      ft_putchar_fd.c ./str/ft_strcpy.c     ./str/ft_strmapi.c \
		./str/ft_strstr.c 	ft_isalnum.c    ft_memchr.c     ft_putendl_fd.c \
		./str/ft_strdup.c     ./str/ft_strncmp.c   ./str/ft_strtrim.c 	ft_isalpha.c \
		ft_memcmp.c     ft_putnbr_fd.c  ./str/ft_strjoin.c    ./str/ft_strncpy.c \
		./str/ft_substr.c 	ft_isascii.c    ft_memcpy.c     ft_putstr_fd.c \
		./str/ft_strlcat.c    ./str/ft_strndup.c    ft_tolower.c 	ft_toupper.c \
		ft_memccpy.c	./str/ft_strcat.c 	./str/ft_strncat.c	./str/ft_strcmp.c \
		ft_calloc.c		ft_get_size.c	ft_gnl.c	./str/ft_stradd.c \
		ft_ispace.c	./str/ft_splitq.c
SRC_1 = ./lst/ft_lstadd_back_bonus.c	./lst/ft_lstadd_front_bonus.c ./lst/ft_lstclear_bonus.c \
		./lst/ft_lstdelone_bonus.c ./lst/ft_lstiter_bonus.c ./lst/ft_lstlast_bonus.c \
		./lst/ft_lstmap_bonus.c ./lst/ft_lstnew_bonus.c ./lst/ft_lstsize_bonus.c 
OBJ_1 = $(SRC_1:.c=.o)
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

bonus : $(OBJ_1)
	ar rc libft.a $(OBJ_1)

%.o: %.c
	$(CC) $(FLAGS) -c -o $@ $<

clean:
	rm -f $(OBJ) ${OBJ_1}

fclean: clean
	rm -f $(NAME)

re: fclean all
