module Problem1 ( lastElem ) where

lastElem :: [a] -> a
lastElem [] = error "No end for empty lists!"
lastElem [x] = x
lastElem (_:xs) = lastElem xs