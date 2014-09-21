module Main where

f x = x + 1
a = f 0

v 1 = "1"
v _ = "?"

b=2
c=a+b
main = do
    print $ v 5
    print $ f 1 + f 2
    if f 1 == 2
        then print 1
        else print 2
    print "hello"
    print c
        where
            d = a+b+c
