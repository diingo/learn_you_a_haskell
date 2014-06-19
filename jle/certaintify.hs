 -- Just what we need to certaintify the uncertain!

module Certaintify
( certaintify
, certaintifyWithDefault
) where

certaintify :: Maybe a -> a
certaintify (Just x) = x
certaintify Nothing = error "Nothing here.. Just an empty shell, an infinite vortex.. and a mustache"

certaintifyWithDefault :: a -> Maybe a -> a
certaintifyWithDefault _ (Just x) = x
certaintifyWithDefault d Nothing = d