# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tomlulu <tomlulu@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/01/09 15:05:31 by tomlulu           #+#    #+#              #
#    Updated: 2018/01/10 14:58:44 by tmaraval         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_printf

SRC = 	ft_printf.c \
		ft_printf_parser.c \
		ft_printf_parser_utils.c \
		ft_printf_utils.c \
		printf_test/test_parser.c \
		printf_test/test_main.c

OBJ	= $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
#	(cd libft ; make; make clean)
	gcc -Wall -Werror -Wextra $(OBJ) -L libft/ -lft -o $(NAME)

./%.o: %.c
	gcc -Wall -Wextra -Werror -c $< -o $@

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)
	/bin/rm -f libft/libft.a

re: fclean all

.PHONY: all clean fclean re
