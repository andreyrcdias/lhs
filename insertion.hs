import Data.List (uncons)

insertionSort :: [Int] -> [Int]
insertionSort [] = []
insertionSort xs = insertionSort' (uncons xs)
  where
    insertionSort' Nothing = []
    insertionSort' (Just (x, xs)) = insertSorted x (insertionSort xs)

    insertSorted x [] = [x]
    insertSorted x (y:ys)
      | x <= y    = x : y : ys
      | otherwise = y : insertSorted x ys

main :: IO ()
main = do
    let arr = [15, 5, 2, 4, 12, 6, 1, 3, 19]
    putStrLn $ "Original array: " ++ show arr
    let sortedArr = insertionSort arr
    putStrLn $ "Sorted array: " ++ show sortedArr
