/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jjacobi <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/03 23:03:34 by jjacobi           #+#    #+#             */
/*   Updated: 2016/11/03 23:17:30 by jjacobi          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *haystack, const char *needle, size_t len)
{
	size_t	index_str;
	size_t	index_tf;

	index_str = 0;
	if (needle[0] == '\0')
		return ((char*)haystack);
	if (len > ft_strlen(needle))
		return ((char*)0);
	while (haystack[index_str] != '\0')
	{
		index_tf = 0;
		while (haystack[index_str + index_tf] == needle[index_tf])
			if (++index_tf == len)
				return ((char*)&haystack[index_str]);
		index_str++;
	}
	return ((char*)0);
}