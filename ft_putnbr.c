/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jriga <jriga@student.s19.be>               +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/28 10:59:32 by jriga             #+#    #+#             */
/*   Updated: 2025/04/28 11:28:21 by jriga            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr(int nb)
{
	long int full;

	full = nb;
	if (nb < 0)
	{
		ft_putchar('-');
		full *= -1;
	}
	if (full > 9)
	{
		ft_putnbr(full / 10);
	}
	ft_putchar((char)(full % 10) + '0');
}
