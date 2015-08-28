module Problem11 ( enhancedLengthEncode, PartialTupleList(..) ) where

import Data.List

data PartialTupleList a = Single a | Multiple Int a
    deriving (Show, Eq)

enhancedLengthEncode :: (Eq a) => [a] -> [PartialTupleList a]
enhancedLengthEncode list = [if len == 1 then Single val else Multiple len val | x <- group list, let len = length x, let val = head x]