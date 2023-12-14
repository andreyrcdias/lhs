power :: Int -> Int -> Int
power x n = product (replicate (fromIntegral n) x)

-- T(n) = T(n/2) + Theta(1)
powerRec :: Int -> Int -> Int
powerRec _ 0 = 1
powerRec x n
    | even n = p * p
    | otherwise = x * p * p
  where
    p = powerRec x (n `div` 2)


main :: IO ()
main = do
    print (power 5 2)
    print (powerRec 5 2)
