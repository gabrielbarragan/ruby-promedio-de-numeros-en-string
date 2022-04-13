## Ejercicio - Promedio de números en un string

Define el método `num_average` que recibe una serie de strings como argumento y obtiene de cada serie el promedio de los dos números que forman la serie. El resultado de las comparaciones en el `driver code` debe ser `true`. 

Restricción: No está permitido definir uno o más arreglos dentro del método.

```ruby
#num_average method



# Driver code
p num_average('001-12.43-56.78', 
              '002-23.63-45.98', 
              '003-78.63-16.28') == [
                                      "001-34.61", 
                                      "002-34.81", 
                                      "003-47.46"
                                    ]

p num_average('001-12.43-56.78', 
              '002-23.63-45.98', 
              '003-78.63-16.28',
              '004-81.54-17.30',
              '005-90.55-18.31',
              '007-91.56-18.56',
              '008-92.02-18.70',
              '009-93.09-19.60',
              '010-94.10-20.60') == [
                                      "001-34.61", 
                                      "002-34.81", 
                                      "003-47.46", 
                                      "004-49.42", 
                                      "005-54.43", 
                                      "007-55.06", 
                                      "008-55.36", 
                                      "009-56.35", 
                                      "010-57.35"
                                    ]

p num_average('010-45.45-23.11') == ["010-34.28"]
```