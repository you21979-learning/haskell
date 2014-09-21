-- http://www.ics.kagoshima-u.ac.jp/~fuchida/edu/algorithm/sort-algorithm/merge-sort.html
module Main where
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x < y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

msort [] = []
msort [x] = [x]
msort xs = merge (msort (take n xs)) (msort (drop n xs))
    where n = length xs `div` 2

main = do
    print $ merge [1,3] [2]
    print $ msort [4, 6, 9, 8, 3, 5, 1, 7, 2]
