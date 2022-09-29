# Introdução, listas, definição de funções

1. Utilizando a função soma, faça uma função que calcule a multiplicação entre
   dois números quaisquer, considerando números positivos e negativos.

1. Seja a sequência:
```
   a1 = sqrt(6)
   a2 = sqrt(6 + sqrt(6))
   a3 = sqrt(6 + sqrt(6 + sqrt(6)))
```
Escreva a função que calcula essa sequência.

3. Defina uma função que, dada uma lista numérica, retorne uma tupla, que
   contenha o maior elemento da lista bem como seu índice. OBS: Pesquise sobre
   a função zip.

4. Defina uma função que converta uma lista de dígitos (unitários, 0 a 9) em
   uma outra lista, que é a sua tradução em String. Considere um dicionário do
   tipo: `dic10 = ["zero", "um", "dois", …, "nove"]`

5. Construa uma função `delPosicaoN :: [Int] -> Int -> [Int]` em que dada uma
   lista de inteiros e a posição de um elemento qualquer, retorne uma nova
   lista sem aquele elemento da n-ésima posição.

6. Construa uma função `inserirPosicaoN :: [Int] -> Int -> Int -> [Int]` em
   que, dada uma lista de inteiros, uma posição e um elemento a ser inserido,
   retorne uma nova lista com aquele elemento na n-ésima posição.

7. Defina uma função que retorne o valor da n-ésima posição de uma lista.

8. Dadas duas listas ordenadas como entrada, faça uma função merge, que une as
   duas listas, de forma que a lista resultante também esteja ordenada.

9. Implemente uma função que receba duas listas de inteiros sem repetição, e
   retorne uma terceira lista que contenha somente números que estejam nas duas
   listas dadas. OBS: Pesquise sobre a função elem.

10. Crie uma função que faça uma codificação sobre uma sequência de caracteres
    iguais, substitua a sequência por !na, onde n é o número de vezes que o
    caractere a é repetido. Observe que só devem ser comprimidas sequências de
    tamanhos maiores que 3.

    Exemplo: `comprime "asdffffghjjkllllpoooi" -> "asd!4fghjjk!4lpoooi"`

11. Implemente uma função que descomprima o texto resultante da função
    anterior.
