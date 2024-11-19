# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yhajbi <yhajbi@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/26 18:16:29 by yhajbi            #+#    #+#              #
#    Updated: 2024/10/28 16:02:21 by yhajbi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Wextra -Werror -I.
AR = ar rcs
RM = rm -f

NAME = libft.a
MSRC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
    ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c \
    ft_memchr.c ft_memcmp.c ft_memcpy.c \
    ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c \
    ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c \
    ft_strdup.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c \
    ft_strlen.c ft_strmapi.c ft_striteri.c ft_strncmp.c \
    ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c \
    ft_tolower.c ft_toupper.c
BSRC = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c \
    ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c ft_lstmap_bonus.c \
    ft_lstnew_bonus.c ft_lstsize_bonus.c
MOBJ = $(MSRC:.c=.o)
BOBJ = $(BSRC:.c=.o)
HEADER = libft.h

$(NAME): $(MOBJ)

all: $(NAME)

bonus: $(NAME) $(BOBJ)

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@
	$(AR) $(NAME) $@

clean:
	$(RM) $(MOBJ) $(BOBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus