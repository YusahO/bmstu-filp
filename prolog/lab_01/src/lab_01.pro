domains
	address = make_address(string,string,integer,integer)

predicates
	phonebook(string,integer,address)
	car(string,string,symbol,integer,string)
	owns(string,symbol,string,string,integer)

clauses
	phonebook("Ivanov",100, make_address("Moscow","Taganskaya",18,34)).
	phonebook("Ivanov",600, make_address("Moscow","Taganskaya",18,34)).
	phonebook("Markov",500, make_address("Kazan","Lenina",10,100)).
	phonebook("Prohorov",111, make_address("SPb","Brodskogo",4,1)).
	phonebook("Kalinina",444, make_address("SPb","Pushkinskaya",31,90)).
	phonebook("Orlov",676, make_address("Moscow","Chertanovksaya",90,4)).
	phonebook("Vaselinina",555, make_address("Sochi","Roz",3,10)).
	
	car("Ivanov","BMW",black,5400000,"B777OP777").
	car("Ivanov","Maybach",black,20000000,"T777OK777").
	car("Markov","Mitsubishi",gray,670000,"B900BC116").
	car("Prohorov","Lada",crimson,500000,"T007EC178").
	car("Kalinina","VW",green,3500000,"T888BC178").
	car("Orlov","Patriot",black,5100000,"P132YC797").
	car("Vaselinina","Nissan",gray,1100000,"K452HH123").
	car("Vaselinina","Lada",crimson,500000,"T643AK123").
	
	owns(Brand,Color,Surname,City,Phonenum) :- 
		phonebook(Surname,Phonenum,make_address(City,_,_,_)), 
		car(Surname,Brand,Color,_,_).
goal
	owns("Lada",crimson,Surname,City,Phonenum).
