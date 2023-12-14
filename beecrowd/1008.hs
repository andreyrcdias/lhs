import Text.Printf

main :: IO ()
main = do
    n <- readLn :: IO Int
    h <- readLn :: IO Int
    v <- readLn :: IO Double
    putStrLn $ "NUMBER = " ++ show n
    let salary = fromIntegral h * v
    printf "SALARY = U$ %.2f\n" salary

