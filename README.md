# Test-Driven Development In Real Life (reloaded)

Excercises collection for the TDD workshop. For the sake of simplicity, from now on text is provided in Spanish.

## Apertura

Ejercicio pensado para dar una _entrada en calor_ a TDD. Demostración en público.

#### Factorial

Se espera un método que resuelva el factorial de un número dado. Ejemplo:

```ruby
assert_equal 24, calc.fact(4)
```

## Ejercicios abiertos

A continuación, los ejercicios propuestos agrupados por nivel de dificultad. Elijan cuidadosamente...

### Fáciles
Están muy bien para empezar ;)

#### FizzBuzz
Escribí un programa que imprima los números del 1 al 100, uno por línea. Para los múltiplos de 3, imprimir "Fizz". Para los de 5, imprimir "Buzz". Para los múltiplos de 3 y de 5, imprimir "FizzBuzz". Ejemplo:

    1
    2
    Fizz
    4
    Buzz
    Fizz
    7
    8
    Fizz
    Buzz
    11
    Fizz
    13
    14
    FizzBuzz
    (...)

#### Serie de Fibonacci
Escribí un método que calcule el enésimo número de la [sucesión de Fibonacci](http://es.wikipedia.org/wiki/Sucesi%C3%B3n_de_Fibonacci). Ejemplo:

    assert_equal 8, calc.fib(6)

#### Números Romanos
Escribí un método que permita obtener el literal romano de un número arábigo. Ejemplo:

    assert_equal 'VIII', arabic.to_roman(8)

#### Rangos
Escribí un programa que permita modelar un rango numérico, y evaluar la pertenencia o no pertenencia de cierto número dentro de él. Ejemplo

    assert Rango.new(0,10).contains(2)

### Intermedios
Aquí es donde la magia sucede

#### Monto escrito
Escribí un programa que permita obtener el literal en castellano para cierto número dado. Ejemplo:

    assert_equal 'cuarenta y dos', Monto.new(42).to_s

#### Factores primos
Escribí un programa que permita calcular la lista de los factores primos de cierto número. Ejemplo:

    assert_equal [2, 2, 3], Primos.generar_para(12)

#### Calculadora de vueltos
Escribí un programa que permita calcular la cantidad de formas distintas en las que se puede dar un vuelto, dadas ciertas denominaciones de monedas, y cierto monto a otorgar. Ejemplo:

    assert_equal 3, Vueltos.new([1, 5]).para(10)

> Explicación. Si tengo monedas de 1 y de 5, puedo dar 10 de las siguientes tres maneras: 10 de 1, 5 de 1 y 1 de 5, 2 de 5.

### Difíciles
Ampliemos nuestros propios límites

#### El juego de Bowling
Escribí un programa que permita calcular el puntaje luego de guardar los tantos parciales en cada lanzamiento. Puede resultar de utilidad esta guía del [sistema de puntuación](http://es.wikipedia.org/wiki/Bowling#Sistema_de_puntuaci.C3.B3n) del juego. Ejemplo:

    def juego = Juego.new
    20.times do juego.tirar(1) end
    assert_equal 20, juego.puntaje

> **Nota:** No es un juego simple, deberás prestar atención a las reglas de puntuación para poder asegurar que en el caso perfecto, la suma da 300.

#### Ordenar un Array
Escribí un programa que permita ordenar un Array. Por supuesto, no podés utilizar métodos sort, ni otros parecidos... Ejemplo:

    assert_equal [1, 2, 3], Ordenador.ordenar([3, 1, 2])

#### Word-Wrapping
Escribí un programa que dado un texto, permita ajustar las palabras como lo hacen los editores de texto. Ejemplos:

    assert_equal "abc\ndef", Wrapper.ajustar("abcdef", 3)
    assert_equal "a b\nc d", Wrapper.ajustar("a b c d", 3)
    assert_equal "ab\ncde\nf", Wrapper.ajustar("ab cdef", 3)

### Desafíos
Entonces... ¿querés algo más?

#### Codebreaker
Escribí un programa que permita decodificar el juego [Mastermind](http://en.wikipedia.org/wiki/Mastermind_(board_game)#Gameplay_and_rules). Ejemplo:

    def code = Codebreaker.new("ABCD")
    assert_equal "NBB_", code.guess("ACBX")

#### La hormiga de Langton
Escribí un programa que calcule el resultado de la ejecución del algoritmo luego de n turnos. La hormiga se mueve de acuerdo a [ciertas reglas](http://en.wikipedia.org/wiki/Langton's_ant#Rules). Ejemplo:

    def mundo = Mundo.new(10)
    def hormiga = Hormiga.new(mundo)
    2.times do hormiga.paso end
    assert_equal [4, 4], hormiga.posicion

#### El juego de la vida de Conway
Escribí un programa que calcule el estado de un tablero luego de n generaciones del [Juego de la vida](http://es.wikipedia.org/wiki/Juego_de_la_vida). Ejemplo:

    assert_equal "    \n ** \n ** \n    ", Tablero.new("    \n ** \n ** \n    ").generacion(10)

> **Nota:** El juego es simple, pero necesitás prestar atención a la forma en la que establecés la interfaz.

## Recursos

* https://sites.google.com/site/tddproblems/all-problems-1
* https://github.com/garora/TDD-Katas
* http://codekata.com/
* http://www.codekatas.org/
* http://katas.softwarecraftsmanship.org/
* http://butunclebob.com/ArticleS.UncleBob.ThePrimeFactorsKata
* http://butunclebob.com/ArticleS.UncleBob.TheBowlingGameKata
* http://www.objectmentor.com/resources/articles/xpepisode.htm