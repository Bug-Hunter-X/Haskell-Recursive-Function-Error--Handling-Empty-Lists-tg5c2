# Haskell Recursive Function: Empty List Handling
This repository demonstrates a common error in Haskell: neglecting to handle empty lists in recursive functions.  The `bug.hs` file contains a recursive function that attempts to find the maximum value in a list.  However, it crashes when given an empty list. The `bugSolution.hs` file provides a corrected version that handles this case gracefully.

## Bug Description
The original `maxRecursive` function doesn't have a base case to handle empty lists.  This leads to a runtime error when the function tries to recursively call itself on an empty list.

## Solution
The solution adds a base case to explicitly handle the empty list scenario, returning a suitable default value (e.g., `Nothing` or using `Maybe` monad) or raising a more informative exception.