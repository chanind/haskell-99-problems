module Problem8Spec (main, spec) where

import Test.Hspec
import Problem8

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "removeDuplicates" $ do
        it "should remove duplicates from lists" $
            removeDuplicates [1,1,1,3,5,6,6] `shouldBe` [1,3,5,6]

        it "should remove duplicates from strings" $
            removeDuplicates "aaabcdddeef" `shouldBe` "abcdef"
