gml2osm.bin: gml2osm.o
	gcc gml2osm.o -o gml2osm.bin -lxml2

gml2osm.o: gml2osm.c
	gcc -g3 -DDEBUG -c -I/usr/include/libxml2 gml2osm.c -o gml2osm.o

clean:
	rm gml2osm.bin gml2osm.o
