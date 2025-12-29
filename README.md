_This project has been created as part of the 42 curriculum by adkhan_

# Libft

## Description

`libft` is a custom C library that reimplements a set of standard C library functions, along with additional utility functions that are commonly used throughout the 42 curriculum.

The goal of this project is to gain a deep understanding of low-level programming concepts such as memory management, pointer manipulation, string handling, and linked lists, while building a reusable foundation for future projects.

All functions are written from scratch and comply strictly with the constraints and coding standards defined by 42.

---

## Project Structure

The library is composed of several functional groups:

- **Libc functions** — Reimplementations of standard C library functions
- **Additional functions** — Utility functions not present in libc
- **Bonus functions** — Linked list utilities

---

## Features

### Libc Functions

`ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`, `ft_strlen`, `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`, `ft_strlcpy`, `ft_strlcat`, `ft_toupper`, `ft_tolower`, `ft_strchr`, `ft_strrchr`, `ft_strncmp`, `ft_memchr`, `ft_memcmp`, `ft_strnstr`, `ft_atoi`, `ft_calloc`, `ft_strdup`

### Additional Functions

`ft_substr`, `ft_strjoin`, `ft_strtrim`, `ft_split`, `ft_itoa`, `ft_strmapi`, `ft_striteri`, `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`

### Bonus Functions (Linked Lists)

`ft_lstnew`, `ft_lstadd_front`, `ft_lstsize`, `ft_lstlast`, `ft_lstadd_back`, `ft_lstdelone`, `ft_lstclear`, `ft_lstiter`, `ft_lstmap`

---

## Compilation & Usage

### 1. Build the Library

To compile the library, run:

```bash
make
```

To compile with bonus functions (linked lists):

```bash
make bonus
```

### 2. Link with Your Code

To use `libft` in your project, include the header and link the library during compilation.

**In your C file:**

```c showlinenumber
#include "libft.h" 
int main(void)
{ 
	char *str = ft_strdup("Hello, libft!"); ft_putendl_fd(str, 1);
free(str);
return (0);
   }
```

**Compile command:**

```bash
cc main.c -L. -lft -o test_libft
```

### Makefile Targets

- `make` / `make all` — Compile the library (includes ASCII art logo)
- `make bonus` — Compile the library with all bonus functions included
- `make clean` — Remove object files
- `make fclean` — Remove object files and the library
- `make re` — Rebuild the mandatory library from scratch
- `make rebonus` — Rebuild the entire library (Mandatory + Bonus) from scratch
- `make help` — Display the help menu with available commands
- `make index` — List all source files (Mandatory and Bonus)

---

## Project Constraints

- Fully compliant with the 42 Norm 
- Uses only allowed functions
- All memory allocations are properly managed
- No use of forbidden libc functions
- Successfully passed Moulinette evaluation

---
## Resources

- `man libc`
- `man malloc`
- `man free`
- 42 project documentation

---

### AI Usage Statement

AI was used to support brainstorming, gather ideas, and structure concepts. No coding was completed with the assistance of AI.