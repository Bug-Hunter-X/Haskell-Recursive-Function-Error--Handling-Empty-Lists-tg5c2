```haskell
import Data.List (sort)

main :: IO ()
main = do
  let numbers = [1, 5, 2, 8, 3]
  let sortedNumbers = sort numbers
  print sortedNumbers -- Output: [1,2,3,5,8]

-- Improved version handling empty lists
maxRecursive :: (Ord a) => [a] -> Maybe a
maxRecursive [] = Nothing
maxRecursive [x] = Just x
maxRecursive (x:xs) = Just (max x (fromMaybe x (maxRecursive xs)))

main2 :: IO ()
main2 = do
  let numbers2 = [1, 5, 2, 8, 3]
  let maxNum = maxRecursive numbers2
  print maxNum -- Output: Just 8
  let emptyList = []
  let maxEmpty = maxRecursive emptyList -- Returns Nothing
  print maxEmpty -- Output: Nothing

--Alternative solution using Maybe and pattern matching
maxRecursive2 :: (Ord a) => [a] -> Maybe a
maxRecursive2 [] = Nothing
maxRecursive2 (x:xs) = Just $ foldr1 max (x:xs)

main3 :: IO ()
main3 = do
  let numbers3 = [1,5,2,8,3]
  let maxNum3 = maxRecursive2 numbers3
  print maxNum3
  let emptyList = []
  let maxEmpty2 = maxRecursive2 emptyList
  print maxEmpty2
```