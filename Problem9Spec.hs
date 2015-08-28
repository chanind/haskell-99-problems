module Problem9Spec (main, spec) where

import Test.Hspec
import Problem9

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "groupDuplicates" $ do
        it "should group duplicates into sublists" $
            groupDuplicates [1,1,2,4,4,1] `shouldBe` [[1,1], [2], [4,4], [1]]

        it "should work on strings too" $
            groupDuplicates "aaaabccaadeeee" `shouldBe` ["aaaa","b","cc","aa","d","eeee"]
