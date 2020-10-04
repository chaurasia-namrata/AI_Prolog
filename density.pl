pop(usa,327). /* 327 million */
pop(india,1300). /* 1.3 billion */
pop(australia, 25). 
pop(canada,36).
area(usa,4). /* millions of square miles */
area(india,1).
area(australia,3).
area(canada,4).

density(Country,Density) :-
pop(Country,Pop),
area(Country,Area),
Density is Pop/Area.
