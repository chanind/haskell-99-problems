module Problem10 ( lengthEncode ) where

import Data.List

encode groupedVal@(val:_) accum = (length groupedVal, val) : accum

lengthEncode :: (Eq a) => [a] -> [(Int, a)]
lengthEncode list = foldr encode [] $ group list