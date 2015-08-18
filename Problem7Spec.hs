module Problem7Spec (main, spec) where

import Test.Hspec
import Problem7

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "flattenList" $ do
        it "should flatten nested lists" $
            flattenList (List [Elem 1, Elem 2, List [Elem 3, Elem 5, List [Elem 9, Elem 3]], List [Elem 13]]) `shouldBe` [1,2,3,5,9,3,13]
