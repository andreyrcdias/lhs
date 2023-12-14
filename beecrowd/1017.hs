import Text.Printf

gasCost :: Int -> Int -> Double
gasCost x y = (fromIntegral x * fromIntegral y) / 12.0

main :: IO ()
main = do
    time <- readLn :: IO Int
    speed <- readLn :: IO Int
    printf "%.3f\n" $ gasCost time speed

