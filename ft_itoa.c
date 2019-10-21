/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cdelaby <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/08 08:50:43 by cdelaby           #+#    #+#             */
/*   Updated: 2019/10/08 11:38:24 by cdelaby          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"

static int				get_size(int nbr)
{
	int i;

	i = 1;
	while (nbr / 10)
	{
		i++;
		nbr = nbr / 10;
	}
	return (i);
}

static int				power(int nbr, int base)
{
	int j;

	j = nbr;
	if (base == 1)
		return (nbr);
	if (base == 0)
		return (1);
	while (base > 1)
	{
		nbr *= j;
		base--;
	}
	return (nbr);
}

static int				checksign(int nbr)
{
	if (nbr >= 0)
		return (0);
	else
		return (1);
}

char					*ft_itoa(int nbr)
{
	int				i;
	int				size;
	unsigned int	unbr;
	char			*cnbr;
	int				placeneg;

	i = 0;
	placeneg = checksign(nbr);
	size = get_size(nbr);
	if (!(cnbr = malloc(sizeof(char) * (size + 1 + placeneg))))
		return (0);
	if (placeneg == 1)
	{
		cnbr[0] = '-';
		i = 1;
	}
	unbr = nbr * (1 - (2 * placeneg));
	while (size != 0)
	{
		cnbr[i++] = unbr / power(10, size - 1) + 48;
		unbr = unbr % power(10, size-- - 1);
	}
	cnbr[i] = 0;
	return (cnbr);
}
