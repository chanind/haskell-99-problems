module Problem10Spec (main, spec) where

import Test.Hspec
import Problem10

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "lengthEncode" $ do
        it "should take a list of repeated elems and retun tuples of how many times each elem was repeated" $
            lengthEncode "aaaabccaadeeee" `shouldBe` [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
