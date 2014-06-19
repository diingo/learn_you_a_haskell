-- a list of confident functions..
-- for playing with
-- for frolicking with
-- for licking like extra condiments on ice cream cones
-- no Maybeing around here

module ConfidentFunctions
( double
, addThree
, square
, showInt
) where

double :: Int -> Int
double x = x * 2

addThree :: Int -> Int
addThree = (+3)

square :: Int -> Int
square = (^2)

showInt :: Int -> String
showInt = show