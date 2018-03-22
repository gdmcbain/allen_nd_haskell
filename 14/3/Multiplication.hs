module Multiplication where

import Test.Hspec

mul :: (Integral a) => a -> a -> a
mul n 0 = 0
mul n m = n + mul n (pred m)

main :: IO ()
main = hspec $ do
  describe "Multiplication" $ do
    it "for all n, say 2, n `mul` 0 is equal to 0" $ do
      mul 2 0 `shouldBe` 0
    it "for all n, say 2, n `mul` 1 is equal to n" $ do
      mul 2 1 `shouldBe` 2
    it "for all n, say 2, n `mul` 2 is equal to n + n" $ do
      mul 2 2 `shouldBe` (2 + 2)
    it "2 `mul` 3 is equal to 6" $ do
      mul 2 3 `shouldBe` 6
