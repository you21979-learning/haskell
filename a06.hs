module Main where

length' []     = 0
length' (_:xs) = 1 + length' xs


take' 0 (_) = []
take' _ [] = []
take' n (x:xs) = x : take' (n - 1) xs

drop' 0 xs = xs
drop' _ [] = []
drop' n (_:xs) = drop' (n - 1) xs

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

sum' [] = 0
sum' (x:xs) = x + sum' xs

product' [] = 1
product' (x:xs) = x * product' xs

fact n = product [1..n]

main = do
--    print $ length' [1, 2, 3, 4, 5]
--    print $ take 2 [1..5]  
--    print $ take 3 [1..5]  
    
--    print $ take' 2 [1..5]
    
--    print $ drop 0 [1..5]
--    print $ drop 1 [1..5]
--    print $ drop 2 [1..5]
--    print $ drop 6 [1..5]
--    print $ drop' 0 [1..5]
--    print $ drop' 1 [1..5]
--    print $ drop' 2 [1..5]
  
--    print $ reverse' [1..5]
--    print $ sum' [1..5]
--    print $ product' [1..5]
    print $ fact 5
