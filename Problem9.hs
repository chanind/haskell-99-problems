module Problem9 ( groupDuplicates ) where

f val [[]] = [[val]]
f val (x@(x':xs'):xs)
    | x' == val = (val:x):xs
    | otherwise = [val]:x:xs

groupDuplicates :: (Eq a) => [a] -> [[a]]
groupDuplicates x = foldr f [[]] x