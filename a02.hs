module Main where

fact 1 = 1
fact n = n * fact (n - 1)

main = do
    print $ fact 1
    print $ fact 2
    print $ fact 3
    print $ fact 4
    print $ fact 5
    print $ fact 6
