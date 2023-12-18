# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: plachard <plachard@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/23 14:45:39 by plachard          #+#    #+#              #
#    Updated: 2023/12/18 17:51:31 by plachard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#	Program 

NAME		=	libft.a


#	Compiler

CC			=	@cc
CFLAGS		=	-Wall -Wextra -Werror

#	Files

SRCS		=	ft_isalnum.c \
			ft_memchr.c \
			ft_strncmp.c \
			ft_isalpha.c \
			ft_memcmp.c \
			ft_strdup.c \
			ft_strchr.c	\
			ft_strnstr.c \
			ft_atoi.c \
			ft_isascii.c \
			ft_memcpy.c \
			ft_strlcat.c \
			ft_strrchr.c \
			ft_bzero.c \
			ft_isdigit.c \
			ft_memmove.c \
			ft_strlcpy.c \
			ft_tolower.c \
			ft_calloc.c \
			ft_isprint.c \
			ft_memset.c \
			ft_strlen.c \
			ft_toupper.c\
			ft_substr.c\
			ft_strjoin.c\
			ft_strtrim.c\
			ft_split.c\
			ft_itoa.c\
			ft_strmapi.c\
			ft_striteri.c\
			ft_putchar_fd.c\
			ft_putstr_fd.c\
			ft_putendl_fd.c\
			ft_putnbr_fd.c\
			

OBJS		=	$(SRCS:.c=.o)

BONUS		=	ft_lstnew.c\

BONUS_OBJS	=	$(BONUS:.c=.o)

#	Rules 

RM			=	@rm -f

all:			$(NAME)
	
$(NAME):		$(OBJS)
					@ar rcs $(NAME) $(OBJS)

clean:		
					@$(RM) $(OBJS) $(BONUS_OBJS)

fclean:			clean
					@$(RM) $(NAME)

re:				fclean	all

bonus:			$(OBJS) $(BONUS_OBJS)
					@ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY:			all clean fclean re