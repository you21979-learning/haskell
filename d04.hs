--【問2】x,y,w,hを表現したRect型を定義して、RectにPointが含まれるかどうかを判定する関数containsを実装してください
--具体的には以下のテストを通してください

module Main where

import Test.HUnit
import System.IO

data Point = Point Int Int deriving Show

data Rect = Rect Int Int Int Int deriving Show

contains (Rect x y w h) (Point px py) =
    x <= px && px < x + w && y <= py && py < y + h

tests = TestList
    [ "contains 1" ~: contains (Rect 2 2 3 3) (Point 1 1) ~?= False
    , "contains 2" ~: contains (Rect 2 2 3 3) (Point 2 2) ~?= True
    , "contains 3" ~: contains (Rect 2 2 3 3) (Point 3 3) ~?= True
    , "contains 4" ~: contains (Rect 2 2 3 3) (Point 4 4) ~?= True
    , "contains 5" ~: contains (Rect 2 2 3 3) (Point 5 5) ~?= False
    ]

main = do
    runTestText (putTextToHandle stderr False) tests
