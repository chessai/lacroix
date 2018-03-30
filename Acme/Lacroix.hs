{-# LANGUAGE GADTSyntax #-}

module Acme.Lacroix
  ( Lacroix
  , neoliberalMarketingDescription
  , pronunciation 
  ) where

data Flavour
  = Pure
  | Lime
  | Lemon
  | Orange
  | Berry
  | CranRaspberry
  | Pamplemousse
  | PeachPear
  | Coconut
  | Apricot
  | PassionFruit
  | Mango
  | Tangerine
  | KeyLime
  | PommeBaya
  | CeriseLimon
  | PinaFraise
  | KiwiSandia
  | MelonPomelo
  | MurePepino
  | LaCola
  deriving (Eq)

data Lacroix where
  Lacroix       :: Flavour -> Lacroix
  LacroixCurate :: Flavour -> Lacroix
  LacroixNicola :: Flavour -> Lacroix

neoliberalMarketingDescription :: Lacroix -> String
neoliberalMarketingDescription (Lacroix flava) =
  case flava of
    Pure -> "Pure: crisp, clean, and clear, the blue can is pure,\n" ++ "our only unflavored sparkling."
    Lime -> "Lime: is as good as it looks, always a crowd\n" ++ "pleaser."
    Lemon -> "Lemon: tastes better as a sparkling water, no\n" ++ "seeds or soggy fruit floater."
    Orange -> "Orange: the more things change the more they\n" ++ "stay the same as this tangy flavor is a fan\n" ++ "favorite!"
    Berry -> "Berry: hopefully you're switching to sparkling\n" ++ "because it's berry delicious!"
    CranRaspberry -> "Cran-Raspberry: a mixture of two great tastes\n" ++ "that's berry delightful with nothing artificial."
    Pamplemousse -> "Pamplemousse: it's the French translation for\n" ++ "the word grapefruit and show of humor from\n" ++ "this all-American brand."
    PeachPear -> "Peach Pear: combines the sweet smell of peach\n" ++ "with a rounded pear taste."
    Coconut -> "Coconut: summer in a can is great as a\n" ++ "mixer."
    Apricot -> "Apricot: is a 2014 new addition to the family\n" ++ "which brings a never-been-done-before flavor\n" ++ "to the sparkling water aisle!"
    PassionFruit -> "PassionFruit now available nationwide! Check\n" ++ "your local retailers as our newest flavor is added\n" ++ "to store shelves throught early 2015"
    Mango -> "Mango: another new flavor for 2014, mangos\n" ++ "are green on the outside with a slightly red hue\n" ++ "on top when ripe, thus the can colors."
    Tangerine -> "Tangerine: freshly peeled aroma and Tangerr-\n" ++ "EEN effervescence to transport your taste buds!\n" ++ "Available now in select markets."
    KeyLime -> "Starts with a creamy note of toasted meringue,\n" ++ "followed by the tart, crisp KeyLime essence,\n" ++ "trailing with a rich, graham cracker finish."
    _ -> error "Market Failure"
neoliberalMarketingDescription (LacroixCurate flavaFlav) =
  case flavaFlav of
    PommeBaya -> "Pomme Bayá: Translates to Apple-Berry. The\n" ++ "second of two new fantastique flavors inspired\n" ++ "by two cultures, French & Spanish. With bolder\n" ++ "flavors than others, and new tall cans too!"
    CeriseLimon -> "Cerise Limón: Translates to Cherry Lime. One of\n" ++ "two new fantastique flavors inspired by two\n" ++ "cultures, French & Spanish. With bolder flavor\n" ++ "than others, and new tall cans too!"
    PinaFraise -> "Piña Fraise: Translates to Pineapple Strawberry.\n" ++ "The newest fantastique flavor inspired by two\n" ++ "cultures, French & Spanish. With bolder flavors\n" ++ "than others, and new tall cans too!"
    KiwiSandia -> "freshly cut, bright watermelon wedges and juicy\n" ++ "slices of kiwi … now that is a perfect pairing!"
    MelonPomelo -> "ripe cantaloupe essence infused with pink\n" ++ "grapefruit… a tangy duo with a touch of\n" ++ "sweetness!"
    MurePepino -> "sweet & sour blackberry notes and the natural\n" ++ "earthiness of crisp cucumber create this unique\n" ++ "new flavor combination"
    _ -> error "Market Failure"
neoliberalMarketingDescription (LacroixNicola bigClock) =
  case bigClock of
    LaCola -> "The first of its kind, a revolutionary experience…\n" ++ "Natural cola *essenced* sparkling water\n" ++ "completely Innocent!\n\n" ++ "0 - Calorie\n" ++ "0 - Sweetener\n" ++ "0 - Sodium\n" ++ "= INNOCENT!" 
    _ -> error "Market Failure"

pronunciation :: Lacroix -> String
pronunciation (Lacroix _ ) = "La-CROY, rhymes with enjoy."
pronunciation (LacroixCurate _) = "La-CROY, rhymes with enjoy.\n" ++ "Cúrate is COO-rah-tay."
pronunciation (LacroixNicola _) = "La-CROY, rhymes with enjoy.\n" ++ "Nih-Cola."

--effervesce :: Lacroix -> Satisfaction
--effervesce = --idk what this should do 
