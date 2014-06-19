firstLetter :: String -> String
firstLetter "" = "Empty string, let's get a drink and break dance!"
firstLetter wholeString@(firstChar:theRest) = "The first letter of " ++ wholeString ++ " is " ++ [firstChar]