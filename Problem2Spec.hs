module Problem2Spec where

import Test.Hspec
import Problem2

main :: IO ()
main = hspec $ do
    describe "secondToLastElem" $ do
        it "returns the second to last element in a list" $
            secondToLastElem [1,4,5,3] `shouldBe` 5