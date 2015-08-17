module Problem4 ( listLength ) where

listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength(xs)