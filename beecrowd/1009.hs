import Text.Printf

main :: IO ()
main = do
    name <- getLine
    salary <- readLn :: IO Double
    total_sales <- readLn :: IO Double
    let total = total_sales * 0.15 + salary
    printf "TOTAL = R$ %.2f\n" $ total
