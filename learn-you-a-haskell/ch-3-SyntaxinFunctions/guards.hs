-- bmiTell Function multiple ways

bmiTell :: Double -> String
bmiTell bmi
    | bmi <= 18.5 = "Diagnosis: Rabbit starved. Solution: You need a carrot."
    | bmi <= 25.0 = "Good sir, good sir! You neither need to eat nor not eat."
    | bmi <= 30.0 = "You're a blimp! Don't sail away!"
    | otherwise = "Hail, mighty sphere of soft, plushy material!"

bmiTell'''' :: Double -> Double -> String
bmiTell'''' weight height = bmiTell bmi ++ " Your bmi is: " ++ show bmi
  where bmi = weight / height ^ 2

bmiTell' :: Double -> Double -> String
bmiTell' weight height
    | bmi <= 18.5 = showBmi "Diagnosis: Rabbit starved. Solution: You need a carrot."
    | bmi <= 25.0 = showBmi "Good sir, good sir! You neither need to eat nor not eat."
    | bmi <= 30.0 = showBmi "You're a blimp! Don't sail away!"
    | otherwise = showBmi "Hail, mighty sphere of soft, plushy material!"
    where
      bmi = weight / height ^ 2
      showBmi msg = msg ++ " Your bmi is: " ++ show bmi

bmiTell'' :: Double -> Double -> String
bmiTell'' weight height = result ++ " Your bmi is: " ++ show bmi
  where
      bmi = weight / height ^ 2
      result = getResult bmi
      getResult x
        | x <= 18.5 = "Diagnosis: Rabbit starved. Solution: You need a carrot."
        | x <= 25.0 = "Good sir, good sir! You neither need to eat nor not eat."
        | x <= 30.0 = "You're a blimp! Don't sail away!"
        | otherwise = "Hail, mighty sphere of soft, plushy material!"

bmiTell''' :: Double -> Double -> String
bmiTell''' weight height = result ++ " Your bmi is: " ++ show bmi
  where
      bmi = weight / height ^ 2
      result
        | bmi <= 18.5 = "Diagnosis: Rabbit starved. Solution: You need a carrot."
        | bmi <= 25.0 = "Good sir, good sir! You neither need to eat nor not eat."
        | bmi <= 30.0 = "You're a blimp! Don't sail away!"
        | otherwise = "Hail, mighty sphere of soft, plushy material!"

--------------------
-- greet function --

niceGreeting :: String
niceGreeting = "Woohoo! It's a me, "

badGreeting :: String
badGreeting = "Eep! I can't talk to you, nope! Shoo hooey,"

greet :: String -> String
greet "Mario" = niceGreeting ++ " Mario!"
greet "Luigi" = niceGreeting ++ " Luigi!"
greet name = badGreeting ++ " " ++name






