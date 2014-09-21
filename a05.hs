module Main where

first (x:xs) = x
second (_:x:_) = x

main = do
    print [1, 2, 3, 4, 5]
    print $ [1, 2, 3, 4, 5] !! 3
    print [1..5]
    print $ [1, 2, 3] ++ [4, 5]
    print $ 1:[2..5]
    print $ 1:2:[3..5]
    print $ [1..4] ++ [5]
    
--    print $ [2..5]:6 -- できない


    print $ "abcde"
    print $ ['a', 'b', 'c', 'd', 'e']
    print $ ['a'..'e']
    print $ 'a':"bcde"
    print $ 'a':'b':"cde"
    print $ "abc" ++ "de"
    print $ "abcde" !! 3
    
    print $ first [1..5]
    print $ first "abcdef"

    print $ second [1..5]
    print $ second "abcdef"
    
    print $ length [1, 2, 3]
    print $ take 2 [1, 2, 3]
    print $ drop 2 [1, 2, 3]
    print $ reverse [1..5]
    print $ sum [1..5]
    print $ product [1..5]
    
