import Text.Printf

areaTriangle :: Double -> Double -> Double
areaTriangle a c = a * c / 2

areaCircle :: Double -> Double
areaCircle c = 3.14159 * c ** 2

areaTrapeze :: Double -> Double -> Double -> Double
areaTrapeze a b c = (a + b) * c / 2

areaSquare :: Double -> Double
areaSquare b = b ** 2

areaRectangle :: Double -> Double -> Double
areaRectangle a b = a * b

main :: IO ()
main = do
    line <- getLine
    let [a, b, c] = map (read :: String -> Double) $ words line
    printf "TRIANGULO: %.3f\n" $ areaTriangle a c
    printf "CIRCULO: %.3f\n" $ areaCircle c
    printf "TRAPEZIO: %.3f\n" $ areaTrapeze a b c
    printf "QUADRADO: %.3f\n" $ areaSquare b
    printf "RETANGULO: %.3f\n" $ areaRectangle a b

