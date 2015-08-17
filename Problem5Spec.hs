module Problem5Spec (main, spec) where

import Test.Hspec
import Problem5

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "reverseList" $ do
        it "should reverse the order of the elements in the list" $
            reverseList [1,2,4,5,2] `shouldBe` [2,5,4,2,1]

        it "should reverse strings too" $
            reverseList "A man, a plan, a canal, panama!" `shouldBe` "!amanap ,lanac a ,nalp a ,nam A"
