# Caballo de ajedrez en un espiral numerico

Codigo en Processing para mostrar el recorrido que realiza un caballo de ajedrez en un espiral de numeros enteros.

Inicialmente se genera un 'tablero' en el cual cada casilla está numerada de 1 en adelante de manera que los números forman un espiral:
![spiral](https://github.com/mbergerman/Caballo-de-ajedrez-en-un-espiral-numerico/blob/master/Spiral.png)
Un caballo de ajedrez comienza en el centro del espiral (la casilla uno), la primer regla es que siempre debe moverse a la casilla con el número más bajo posible de entre las que puede alcanzar mediante un movimiento de caballo de ajedrez, la segunda regla es que no está permitido que el caballo visite dos veces la misma casilla.
El recorrido que realiza el caballo es estéticamente placentero, y curiosamente luego de 2084 pasos el caballo queda 'encerrado' y todas las casillas alcanzables ya fueron visitadas.
![trapped knight](https://github.com/mbergerman/Caballo-de-ajedrez-en-un-espiral-numerico/blob/master/trappedknight.png)
