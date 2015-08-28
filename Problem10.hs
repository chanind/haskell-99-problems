module Problem10 ( lengthEncode ) where

import Data.List

lengthEncode :: (Eq a) => [a] -> [(Int, a)]
lengthEncode list = [(length x, head x) | x <- group list]