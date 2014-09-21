module Main where

bswap [x] = [x]
bswap (x:xs)
    | x > y = y:x:ys
    | otherwise = x:y:ys
    where
        (y:ys) = bswap xs
   
bsort [] = []
bsort xs = y : bsort ys
    where
        (y:ys) = bswap xs

main = do
    print $ bsort [3, 5, 1, 7, 2]
