module Problem4Spec (main, spec) where

import Test.Hspec
import Problem4

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "listLength" $ do
        it "should return the number of elements in a list" $
            listLength [1,2,3,4,5,6,1] `shouldBe` 7

        it "should return 0 for an empty list" $
            listLength [] `shouldBe` 0
