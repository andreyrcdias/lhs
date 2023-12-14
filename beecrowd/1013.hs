import Text.Printf

main :: IO ()
main = do
    line <- getLine :: IO String
    let arr = map (read :: String -> Int) $ words line
    printf "%d eh o maior\n" $ maximum arr
