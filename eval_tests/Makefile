# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Meikfail                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jervasti <jonne.ervasti@student.hive.fi>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/26 09:18:51 by jervasti          #+#    #+#              #
#    Updated: 2022/02/10 18:26:35 by jervasti         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ALIST = *

ILIST = invalid*

VLIST = valid*

all:
	@for map in $(ALIST) ; do \
		echo "\nTesting with file '$$map':" ; \
		../fillit $$map ; \
	done

valid:
	@for i in $(VLIST); do \
	../fillit $$i; \
	done

invalid:
	@for i in $(ILIST); do \
	../fillit $$i; \
	done
