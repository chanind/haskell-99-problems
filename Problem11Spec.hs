module Problem11Spec (main, spec) where

import Test.Hspec
import Problem11

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "enhancedLengthEncode" $ do
        it "should only encode with groups of >1 elem" $
            enhancedLengthEncode "aaaabccaadeeee" `shouldBe` [
                Multiple 4 'a',
                Single 'b',
                Multiple 2 'c',
                Multiple 2 'a',
                Single 'd',
                Multiple 4 'e'
            ]
