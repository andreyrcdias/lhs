-- f :: A -> B
-- g :: B -> C
-- h :: C -> D
-- h . (g . f) == (h . g) . f == h . g . f
-- h∘(𝑔∘𝑓) = (h∘𝑔)∘𝑓 = h∘𝑔∘𝑓

-- useful commands
-- :r (reload)
-- :q (quit)
-- :t (info)
-- :t <exp> (gives function type)
-- :t sqrDist
--sqrDist :: Num a => a -> a -> a
-- Num type means that supports math operations (add, sub, mult, div)
sqrDist x y = x^2 + y^2
main = print (sqrDist 3 4 + sqrDist 7 8)

-- $ operator
-- negative numbers put parantheses

dist pt = sqrt $ sqrDist pt
-- . is a operator (high precedence)
-- dist = sqrt . sqDist
