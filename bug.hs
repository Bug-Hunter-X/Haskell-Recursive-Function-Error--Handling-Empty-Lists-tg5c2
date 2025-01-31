```haskell
import Data.List (sort)

main :: IO ()
main = do
  let numbers = [1, 5, 2, 8, 3]
  let sortedNumbers = sort numbers
  print sortedNumbers -- Output: [1,2,3,5,8]

-- Problem:
-- The following code attempts to find the maximum element in a list using recursion but will fail for empty lists

maxRecursive :: (Ord a) => [a] -> a
maxRecursive [] = error "Cannot find maximum of an empty list"
maxRecursive [x] = x
maxRecursive (x:xs) = max x (maxRecursive xs)

main2 :: IO ()
main2 = do
  let numbers2 = [1, 5, 2, 8, 3]
  let maxNum = maxRecursive numbers2
  print maxNum -- Output: 8
  let emptyList = []
  let maxEmpty = maxRecursive emptyList -- Error: *** Exception: Cannot find maximum of an empty list
  print maxEmpty
```