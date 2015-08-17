module Problem3Spec (main, spec) where

import Test.Hspec
import Problem3

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "getElemAtIndex" $ do
        it "should return the element in the list at the given index (1-based)" $
            getElemAtIndex [1,3,4,5,7,10] 3 `shouldBe` 4