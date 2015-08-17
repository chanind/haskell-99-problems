module Problem1Spec where

import Test.Hspec
import Problem1

main :: IO ()
main = hspec $ do
    describe "lastElem" $ do
        it "returns the last element in a list" $
            lastElem [1,4,5,3] `shouldBe` 3