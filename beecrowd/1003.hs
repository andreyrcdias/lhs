import Text.Printf

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    let sum = a + b
    printf "SOMA = %d\n" $ a + b

