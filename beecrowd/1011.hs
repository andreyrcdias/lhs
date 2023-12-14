import Text.Printf

volume :: Int -> Double
volume r = (4.0/3.0) * 3.14159 * (fromIntegral r ^ 3)

main :: IO ()
main = do
    n <- readLn :: IO Int
    printf "VOLUME = %.3f\n" $ volume n
