-- Exercise set 1
data Date = Date Int Int Int
data Anniversary = Birthday String Date
                | Wedding String String Date
showDate :: Date -> String
showDate (Date year month day) =
  show year ++ "-" ++ show month ++ "-" ++ show day
showAnniversary :: Anniversary -> String
showAnniversary (Birthday name date) =
  name ++ " born " ++ showDate date
showAnniversary (Wedding name1 name2 date) =
  name1 ++ " married " ++ name2 ++ " on " ++ showDate date

kimWedding :: Anniversary
kimWedding = Wedding "Kevin Kim" "Minji Jeong" (Date 2015 6 28)

-- Exercise Set 3
myScanr :: (a -> b -> b) -> b -> [a] -> [b]
myScanr f acc [] = []
myScanr f acc list = foldr (\x y -> 

