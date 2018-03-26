module Acme.Lacroix where

data TheBoys = Randall | Joe | Murph | Chad deriving Show

you :: Either TheBoys TheBoys
you = Left Randall

them :: Either TheBoys TheBoys
them = Right Chad

script :: String
script = "cracking open a cold one with the boys"
