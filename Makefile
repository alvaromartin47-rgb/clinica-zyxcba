# CREADO POR ALVARO MARTIN EN PYTHON :)

CFLAGS = -g -std=c99 -Wall -Wconversion -Wtype-limits -pedantic
VFLAGS = --leak-check=full --track-origins=yes --show-reachable=yes

# OBJETOS A BORRAR
REMOVE = zyxcba.o src/strutil.o src/clinica/clinica.o src/hash/aux.o src/hash/hash.o src/heap/aux.o src/heap/heap.o src/sala/sala.o src/csv/csv.o src/cola/cola.o src/lista/lista.o src/persona/persona.o src/abb/aux.o src/abb/abb.o src/abb/pila.o src/nodo/nodo.o src/abb/nodo/nodo_abb.o src/funciones_tp2.o


# COMPILACION DE OBJETOS

zyxcba.o: zyxcba.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/strutil.o: src/strutil.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/clinica/clinica.o: src/clinica/clinica.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/hash/aux.o: src/hash/aux.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/hash/hash.o: src/hash/hash.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/heap/aux.o: src/heap/aux.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/heap/heap.o: src/heap/heap.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/sala/sala.o: src/sala/sala.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/csv/csv.o: src/csv/csv.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/cola/cola.o: src/cola/cola.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/lista/lista.o: src/lista/lista.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/persona/persona.o: src/persona/persona.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/abb/aux.o: src/abb/aux.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/abb/abb.o: src/abb/abb.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/abb/pila.o: src/abb/pila.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/nodo/nodo.o: src/nodo/nodo.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/abb/nodo/nodo_abb.o: src/abb/nodo/nodo_abb.c
	@- $(CC) -c $(CFLAGS) $^ -o $@

src/funciones_tp2.o: src/funciones_tp2.c
	@- $(CC) -c $(CFLAGS) $^ -o $@


# COMPILACION DE EJECUTABLES

zyxcba: zyxcba.o src/strutil.o src/clinica/clinica.o src/hash/aux.o src/hash/hash.o src/heap/aux.o src/heap/heap.o src/sala/sala.o src/csv/csv.o src/cola/cola.o src/lista/lista.o src/persona/persona.o src/abb/aux.o src/abb/abb.o src/abb/pila.o src/nodo/nodo.o src/abb/nodo/nodo_abb.o src/funciones_tp2.o
	@- $(CC) $(CFLAGS) $^ -o $@


# LIMPIAR

clean:
	@- rm -r $(REMOVE)
