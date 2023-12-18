/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: plachard <plachard@student.s19.be>         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/18 16:22:32 by plachard          #+#    #+#             */
/*   Updated: 2023/12/18 18:14:10 by plachard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list  *ft_lstnew(void *content)
{
    t_list  *new;
    new = malloc(sizeof(t_list));
    if (!new)
        return (NULL);
    new->content = content;
    new->next = NULL;
    return (new);
}	

#include <stdio.h>
/*
int main(int argc, char* argv[])
{
    int x = 15;

    t_list  root;
    root.content = x;
    root.next = malloc(sizeof(t_list));
    root.next->content = 0;
    root.next->next = NULL;

    printf("first: %d\n", root.content);
    printf("second: %d\n", root.next->content);
    free(root.next);
    return 0;
}
*/