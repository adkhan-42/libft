# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adkhan <adkhan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/11/10 12:53:38 by adkhan            #+#    #+#              #
#    Updated: 2025/11/16 20:02:23 by adkhan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
CFLAGS = -Wall -Werror -Wextra
RM = rm -f
AR = ar rcs
GREEN = \033[32m
YELLOW = \033[33m
CYAN = \033[36m
RED = \033[31m
RESET = \033[0m

MAND_SRCS = ft_atoi.c \
            ft_bzero.c \
            ft_calloc.c \
            ft_isalnum.c \
            ft_isalpha.c \
			ft_isascii.c \
            ft_isdigit.c \
            ft_isprint.c \
			ft_itoa.c \
            ft_memchr.c \
            ft_memcmp.c \
            ft_memcpy.c \
            ft_memmove.c \
            ft_memset.c \
			ft_putchar_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_putstr_fd.c \
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
            ft_toupper.c

BONUS_SRCS = ft_lstadd_back.c \
			 ft_lstadd_front.c \
			 ft_lstclear.c \
			 ft_lstdelone.c \
			 ft_lstiter.c \
			 ft_lstlast.c \
			 ft_lstmap.c \
			 ft_lstnew.c \
			 ft_lstsize.c

MAND_OBJS = $(MAND_SRCS:.c=.o)
BONUS_OBJS = $(BONUS_SRCS:.c=.o)

%.o: %.c libft.h
	@echo -e "$(GREEN)Creating $@$(RESET)"
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: all bonus clean fclean re rebonus help index logo

all: logo $(NAME)

$(NAME): $(MAND_OBJS)
	@echo -e "$(GREEN)Making Library with $(shell echo $(MAND_SRCS) | wc -w) Mandatory Files$(RESET)"
	$(AR) $(NAME) $(MAND_OBJS)
	@echo -e "$(GREEN)Libft is online!$(RESET)"

bonus: $(MAND_OBJS) $(BONUS_OBJS)
	@echo -e "$(GREEN)Adding $(shell echo $(BONUS_SRCS) | wc -w) Bonus files to Library$(RESET)"
	$(AR) $(NAME) $^
	@echo -e "$(GREEN)Bonus files added Libft is ready for use$(RESET)"

clean:
	@echo -e "$(RED)Cleaning all the Object Files$(RESET)"
	$(RM) $(MAND_OBJS) $(BONUS_OBJS)
	@echo -e "$(RED)Object Files Removed$(RESET)"

fclean: clean
	@echo -e "$(RED)Removing the Library$(RESET)"
	$(RM) $(NAME)
	@echo -e "$(RED)Library Removed$(RESET)"

re: fclean all
	@echo -e "$(GREEN)Recreated everything from Scratch excluding Bonus files$(RESET)"
	@echo -e "$(CYAN)To Add Bonus files to the library Plus run the bonus or the rebonus commands$(RESET)"

rebonus: fclean bonus
	@echo -e "$(GREEN)Included Bonus files in the rebuild$(RESET)"

help:
	@echo -e "$(CYAN)Available commands:"
	@echo "-------------------"
	@echo "make all     - Compiles the mandatory libft.a library."
	@echo "make bonus   - Compiles libft.a with all bonus functions."
	@echo "make clean   - Removes all object files (.o)."
	@echo "make fclean  - Removes all object files and the libft.a library."
	@echo "make re      - Rebuilds the mandatory library from scratch (fclean + all)."
	@echo "make rebonus - Rebuilds the library with the Bonus Functions (fclean + bonus)."
	@echo "make help    - Shows this help message."
	@echo "make index   - Shows index of all the functions included in libft (Manadatory + Bonus).$(RESET)"

index:
	@echo -e "$(RED)--- Mandatory Functions ($(shell echo $(MAND_SRCS) | wc -w)) ---$(RESET)"
	@for file in $(MAND_SRCS); do \
		echo $$file; \
	done
	@echo ""
	@echo -e "$(YELLOW)--- Bonus Functions ($(shell echo $(BONUS_SRCS) | wc -w)) ---$(RESET)"
	@for file in $(BONUS_SRCS); do \
		echo $$file; \
	done

logo:
	@echo " █████       █████ ███████████  ███████████ ███████████";
	@echo "▒▒███       ▒▒███ ▒▒███▒▒▒▒▒███▒▒███▒▒▒▒▒▒█▒█▒▒▒███▒▒▒█";
	@echo " ▒███        ▒███  ▒███    ▒███ ▒███   █ ▒ ▒   ▒███  ▒ ";
	@echo " ▒███        ▒███  ▒██████████  ▒███████       ▒███    ";
	@echo " ▒███        ▒███  ▒███▒▒▒▒▒███ ▒███▒▒▒█       ▒███    ";
	@echo " ▒███      █ ▒███  ▒███    ▒███ ▒███  ▒        ▒███    ";
	@echo " ███████████ █████ ███████████  █████          █████   ";
	@echo "▒▒▒▒▒▒▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒          ▒▒▒▒▒    ";
	@echo "                                                       ";
	@echo "                                                       ";
	@echo "                                                       ";