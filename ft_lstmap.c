/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adkhan <adkhan@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/11/10 12:41:52 by adkhan            #+#    #+#             */
/*   Updated: 2025/11/10 12:42:01 by adkhan           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*new_node;
	t_list	*new_head;
	void	*new_content;
	t_list	*current_old;

	if (!lst || !f || !del)
		return (NULL);
	new_head = NULL;
	current_old = lst;
	while (current_old != NULL)
	{
		new_content = (*f)(current_old->content);
		new_node = ft_lstnew(new_content);
		if (!new_node)
		{
			(*del)(new_content);
			ft_lstclear(&new_head, del);
			return (NULL);
		}
		ft_lstadd_back(&new_head, new_node);
		current_old = current_old->next;
	}
	return (new_head);
}
