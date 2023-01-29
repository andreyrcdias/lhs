merge :: [Int] -> [Int] -> [Int]
merge x [] = x
merge [] y = y
merge (x:xs) (y:ys) =
  if x > y
  then y:merge (x:xs) ys
  else x:merge xs (y:ys)

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort [x,y] = if x > y then [y,x] else [x,y]
mergeSort x =
  let p = div (length x) 2 in
  merge (mergeSort $ take p x) (mergeSort $ drop p x)

main :: IO ()
main = do print (mergeSort [5,9,1,8,4,7,6,3,2])

