import Text.Printf

main :: IO ()
main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Double
    let consumption = fromIntegral x / y
    printf "%.3f km/l\n" $ consumption

