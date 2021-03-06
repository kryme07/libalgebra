# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: ghazette <ghazette@student.le-101.fr>      +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2017/11/16 13:29:01 by ghazette     #+#   ##    ##    #+#        #
#    Updated: 2018/10/19 14:51:56 by ghazette    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME = libalgebra.a

CC = gcc

CFLAGS = -Wall -Werror -Wextra -O2

RM = rm -f

SRCS = srcs/vector.c srcs/vector2.c srcs/vector3.c srcs/matrix.c

HEADER = includes/vector.h

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: re all clean fclean