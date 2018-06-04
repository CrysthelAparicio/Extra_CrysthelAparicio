exe:	main.o platos.o ingredientes.o bodega.o 
	g++ -std=c++11 main.o platos.o ingredientes.o bodega.o -o exe

main.o:	main.cpp platos.h ingredientes.h bodega.h
	g++ -std=c++11 -c main.cpp

platos.o:	platos.h platos.cpp ingredientes.h
	g++ -std=c++11 -c platos.cpp

ingredientes.o:	ingredientes.h ingredientes.cpp 	
	g++ -std=c++11 -c ingredientes.cpp

bodega.o:	bodega.cpp	bodega.h ingredientes.h
	g++ -std=c++11 -c bodega.cpp
