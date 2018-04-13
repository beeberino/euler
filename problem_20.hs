module Problem20 where
import Data.List

main = putStrLn ( show factSum )

factSum = sum $ digits (product [1..100])

digits 0 = []
digits x = digits (div x 10) ++ [mod x 10]
