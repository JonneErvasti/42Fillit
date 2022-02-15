# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jervasti <jonne.ervasti@student.hive.fi>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/26 09:18:51 by jervasti          #+#    #+#              #
#    Updated: 2022/02/15 10:04:27 by jervasti         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

SRC = main.c list.c checker.c mapfunctions.c solve.c

TSTDIR = ./eval_tests/

FLAGS = -Wall -Wextra -Werror

LIB = -L libft -lft

ILIST = *valid*
#invalid_wrong_block two three

all: $(NAME)

$(NAME):
	@make -C libft
	gcc $(FLAGS) $(SRC) -o $(NAME) -I libft $(LIB)

f:
	gcc $(FLAGS) $(SRC) -o $(NAME) -I libft $(LIB)

test:
	@make -C eval_tests

clean:
	@make -C libft clean

fclean: clean
	@make -C libft fclean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
