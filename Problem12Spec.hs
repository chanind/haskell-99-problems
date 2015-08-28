module Problem12Spec (main, spec) where

import Test.Hspec
import Problem12

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "enhancedLengthDecode" $ do
        it "should undo an encoded list" $ do
            let encodedList = [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
            enhancedLengthDecode encodedList `shouldBe` "aaaabccaadeeee"