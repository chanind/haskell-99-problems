module Problem2Spec (main, spec) where

import Test.Hspec
import Problem2

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "secondToLastElem" $ do
        it "returns the second to last element in a list" $
            secondToLastElem [1,4,5,3] `shouldBe` 5