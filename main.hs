main :: IO ()

f []    = []
f (x:xs) = f ys ++ [x] ++ f zs
          where 
            ys = [a | a <- xs, a <= x]
            zs = [b | b <- xs, b > x]

main = print (f [9,8,7,123,4,5,6,91,1,2,90,0])
