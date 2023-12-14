main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    let diff = a*b - c*d
    putStrLn $ "DIFERENCA = " ++ show diff

