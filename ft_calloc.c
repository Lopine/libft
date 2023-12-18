/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: plachard <plachard@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/23 13:25:15 by plachard          #+#    #+#             */
/*   Updated: 2023/12/18 16:30:41 by plachard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t count, size_t size)
{
	void	*ptr;
	size_t	buffer_size;

	buffer_size = count * size;
	if (count != 0 && (buffer_size / count) != size)
		return (NULL);
	ptr = malloc(buffer_size);
	if (!ptr)
		return (NULL);
	ft_bzero(ptr, (buffer_size));
	return (ptr);
}
