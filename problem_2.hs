module Problem2 where
import Data.List

main = putStrLn $ show sumFib

sumFib = sum (takeWhile (\x -> x <= 4000000) ( map fibTerm [2,5..] ))

fibTerm n = round $ (phi ^ n - (1 - phi) ^ n) / sq5
  where
    sq5 = sqrt 5
    phi = (1 + sq5) / 2
