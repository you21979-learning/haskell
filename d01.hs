data Color = Blue | Red | Green | White
    deriving Show

toInt Blue    = 1
toInt Red     = 2
toInt Green   = 4
toInt White   = 7

toColor 1 = Blue
toColor 2 = Red
toColor 4 = Green
toColor 7 = White

main = do
    print $ toInt Blue
