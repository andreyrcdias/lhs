import Text.Printf

total :: [String] -> Double
total l = let n = read (l !! 1) :: Double
              p = read (l !! 2) :: Double
         in n * p

main :: IO ()
main = do
    lineOne <- getLine :: IO String
    lineTwo <- getLine :: IO String
    let t1 = total $ words lineOne
    let t2 = total $ words lineTwo
    printf "VALOR A PAGAR: R$ %.2f\n" $ t1 + t2

