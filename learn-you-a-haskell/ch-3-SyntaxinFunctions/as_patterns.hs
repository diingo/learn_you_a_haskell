firstLetter :: String -> String
firstLetter "" = "Empty as a dry well"
firstLetter all@(x:xs) = "First letter of " ++ all ++ " is " ++ [x]

lastLetter :: String -> String
lastLetter [] = "Got nuthin', do nuthin'"
lastLetter str = "Last letter of " ++ str ++ " is " ++ [last str]
