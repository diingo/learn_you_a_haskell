firstLetter :: String -> String
firstLetter "" = "Empty string, let's get a drink and break dance!"
firstLetter wholeString@(x:xs) = "The first letter of " ++ wholeString ++ " is " ++ [x]