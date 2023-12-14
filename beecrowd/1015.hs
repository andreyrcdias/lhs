import Text.Printf

distance :: Double -> Double -> Double -> Double -> Double
distance x1 y1 x2 y2 = sqrt ((x2 - x1)^2 + (y2 - y1)^2)

main :: IO ()
main = do
    lineX <- getLine :: IO String
    let [x1, y1] = map (read :: String -> Double) $ words lineX
    lineY <- getLine :: IO String
    let [x2, y2] = map (read :: String -> Double) $ words lineY
    printf "%.4f\n" $ distance x1 y1 x2 y2

