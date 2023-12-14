sqrDist :: Int -> Int -> Int
sqrDist x y = x^2 + y^2
main :: IO ()
main = print(sqrDist 3 4 + sqrDist 7 8)
-- print :: show => a -> IO ()
