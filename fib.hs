import System.Environment

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)


smartFib :: Int -> Int
smartFib 0 = 0
smartFib 1 = 1
smartFib n = f !! n
  where
    f = 0 : 1 : [f !! (i - 1) + f !! (i - 2) | i <- [2 .. n]]

main :: IO ()
main = do
    args <- getArgs
    let n = read (head args) :: Int
    print (fib n)

    -- smart fibonnaci
    -- print (smartFib n)

