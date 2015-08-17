module Problem6Spec (main, spec) where

import Test.Hspec
import Problem6

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "isPalindrome" $ do
        it "should return true if the string is a palindrome" $
            isPalindrome "racecar" `shouldBe` True

        it "should return true if the string is not a palindrome" $
            isPalindrome "jackfruit" `shouldBe` False
