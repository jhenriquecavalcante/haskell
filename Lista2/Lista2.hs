import Data.List

-- Multiplicação --
soma :: Int -> Int -> Int
soma x y = x + y

xor :: Bool -> Bool -> Bool
xor True True = False
xor False False = False
xor _ _ = True

mult :: Int -> Int -> Int
mult 0 _ = 0
mult _ 0 = 0
mult x y
  | xor (x < 0) (y < 0) = negate res
  | otherwise = res
  where
    res = soma (abs y) (mult (abs x - 1) (abs y))

-- Sequência --
seqRaiz6 :: Int -> Double
seqRaiz6 1 = sqrt 6
seqRaiz6 n = sqrt (6 + seqRaiz6 (n-1))

-- Maior --
maiorDaLista :: [Int] -> (Int, Int)
maiorDaLista l = maiorDaListaAux (tail novaLista) (head novaLista)
  where
    novaLista = zip l [0 ..]

maiorDaListaAux [] maiorAtual = maiorAtual
maiorDaListaAux (x:xs) maiorAtual =
  if fst x > fst maiorAtual
    then maiorDaListaAux xs x
    else maiorDaListaAux xs maiorAtual

maiorDalista2 l = maiorDaListaAux2 (tail l) (head l, 0) 0

maiorDaListaAux2 [] tupla i = tupla
maiorDaListaAux2 (x:xs) tupla i =
  if x > fst tupla
    then maiorDaListaAux2 xs (x,i+1) (i+1)
    else maiorDaListaAux2 xs tupla (i+1)

-- Conversão --
conv :: [Int] -> [String]
conv [] = []
conv (n:ns) = dic10 !! n : conv ns
  where dic10 = ["zero", "um", "dois", "três", "quatro", "cinco", "seis", "sete", "oito", "nove"]

-- Deletar Posição --
delPosicaoN :: Int -> [Int] -> [Int]
delPosicaoN n l = take n l ++ drop (n+1) l

-- Inserir Posição --
inserirPosicaoN :: Int -> Int -> [Int] -> [Int]
inserirPosicaoN n v l = take n l ++ [v] ++ drop n l

-- Posição --
posicaoN :: Int -> [Int] -> Int
posicaoN n l = head $ drop n l

-- Merge --
merge :: [Int] -> [Int] -> [Int]
merge l1 [] = l1
merge [] l2 = l2
merge (x:xs) (y:ys)
  | x < y = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

-- Interseção --
intersecao :: [Int] -> [Int] -> [Int]
intersecao a b = [x | x <- a, elem x b]

-- Comprime --
comprime :: String -> String
comprime s = concat [comp x | x <- group s]

comp s
  | length s > 3 = "!" ++ show (length s) ++ [head s]
  | otherwise = s

-- Descomprime --
-- descomprime :: String -> 
-- descomprime s = takeWhile isDigit s
