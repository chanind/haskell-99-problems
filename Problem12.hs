module Problem12 ( enhancedLengthDecode, PartialTupleList(..) ) where

import Data.List

data PartialTupleList a = Single a | Multiple Int a
    deriving (Show, Eq)

enhancedLengthDecode :: (Eq a) => [PartialTupleList a] -> [a]
enhancedLengthDecode encodedList = foldr decode [] encodedList
    where
        decode (Single val) accum = val:accum
        decode (Multiple times val) accum = (replicate times val) ++ accum
