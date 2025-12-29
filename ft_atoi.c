/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adkhan <adkhan@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/11/16 19:21:33 by adkhan            #+#    #+#             */
/*   Updated: 2025/11/17 19:10:19 by adkhan           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	check_result(long long n, int sign)
{
	if (sign == 1 && n > 2147483647LL)
		return (-1);
	if (sign == -1 && n > 2147483648LL)
		return (0);
	return (1);
}

static void	skip_space_sign(const char *str, int *sign_ptr, int *i_ptr)
{
	while (str[*i_ptr] == ' ' || (str[*i_ptr] >= 9 && str[*i_ptr] <= 13))
		(*i_ptr)++;
	if (str[*i_ptr] == '-')
	{
		*sign_ptr *= -1;
		(*i_ptr)++;
	}
	else if (str[*i_ptr] == '+')
		(*i_ptr)++;
}

int	ft_atoi(const char *str)
{
	int			sign;
	long long	result;
	int			i;
	int			check;

	sign = 1;
	result = 0;
	i = 0;
	skip_space_sign(str, &sign, &i);
	while (str[i] >= '0' && str[i] <= '9')
	{
		result = (result * 10) + (str[i] - '0');
		check = check_result(result, sign);
		if (check == -1 || check == 0)
			return (check);
		i++;
	}
	return ((int)(sign * result));
}
