module Problem3 ( getElemAtIndex ) where

getElemAtIndex :: [a] -> Int -> a
getElemAtIndex list index = last (take index list)