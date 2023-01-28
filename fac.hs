import System.Environment

fac :: Int -> Int
fac 0 = 1
fac n = n * fac (n-1)
-- main = print (fac 5)
-- main fac n = if n == 0 then 1 else n * fac(n-1)

main :: IO ()
main = do
    args <- getArgs
    let n = read (head args) :: Int
    print (fac n)

