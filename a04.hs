module Main where

fibx 0 = 0
fibx 1 = 1
fibx n = fibx(n - 1) + fibx(n - 2)

fib n
    | n == 0 = 0
    | n == 1 = 1
    | otherwise = fib(n - 1) + fib(n - 2)

main = do
    print $ map fibx [0..10]
    print $ map fib [0..10]
    
