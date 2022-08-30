-- Maior valor --
valoresIguais :: Double -> Double -> Double -> Int
valoresIguais a b c =
  if a == b && b == c then 3
  else if a == b || b == c || c == a then 2
  else 0

-- Média --
mediaValores :: Double -> Double -> Double -> Int
mediaValores a b c = maior a media + maior b media + maior c media
  where media = (a + b + c) / 3

maior :: Double -> Double -> Int
maior x y = if x > y then 1 else 0

-- Potência 2 --
potencia_2 :: Double -> Double
potencia_2 x = x * x

-- Potência 4 --
potencia_4 :: Double -> Double
potencia_4 x = potencia_2 (potencia_2 x)

-- Ou exclusivo --
ouExclusivo :: Bool -> Bool -> Bool
ouExclusivo a b = (a || b) && not(a && b)

-- Bhaskara --
delta :: Double -> Double -> Double -> Double
delta a b c = b*b - 4*a*c

raiz1 :: Double -> Double -> Double -> Double
raiz1 a b c = (negate b + sqrt (delta a b c)) / 2*a

raiz2 :: Double -> Double -> Double -> Double
raiz2 a b c = (negate b - sqrt (delta a b c)) / 2*a

xMenor :: Double -> Double -> Double -> Double
xMenor a b c = if x1 < x2 then x1 else x2
  where x1 = raiz1 a b c
        x2 = raiz2 a b c

xMaior :: Double -> Double -> Double -> Double
xMaior a b c = if x2 > x1 then x2 else x1
  where x1 = raiz1 a b c
        x2 = raiz2 a b c

-- Lista --
somaInclusivo :: Int -> Int -> Int
somaInclusivo n1 n2 = sum [n1 .. n2]

somaExclusivo :: Int -> Int -> Int
somaExclusivo n1 n2 = somaInclusivo (n1 + 1) (n2 - 1)

-- Múltiplos --
multiplos :: Int -> Int -> Int -> Int
multiplos n1 n2 n3 = length [x | x <- [n1 .. n2], mod x n3 == 0]

-- Coleção --
fat :: Int -> Int
fat 0 = 1
fat 1 = 1
fat n = n * fat (n-1)

combinacao :: Int -> Int -> Int
combinacao n k = fat n `div` (fat k * fat (n - k))

-- Mod2 --
mod2 :: Int -> Int -> Int
mod2 n d = n - ((n `div` d) * d)

mod2' :: Int -> Int -> Int
mod2' n d = if n > d then mod2 (n - d) d else n
