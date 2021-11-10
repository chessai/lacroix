module Lacroix
  ( Lacroix(..)
  , Regular(..)
  , Curate(..)
  , NiCola(..)
  , description
  , pronunciation
  ) where

-- | All flavours of regular LaCroix.
data Regular
  = Apricot
  | BeachPlum
  | Berry
  | BlackRazzberry
  | Coconut
  | GuavaSaoPalo
  | Hibiscus
  | Keylime
  | Lemon
  | Lime
  | Limoncello
  | Mango
  | Orange
  | Pamplemousse
  | Passionfruit
  | Pasteque
  | PeachPear
  | Pure
  | RazzCranberry
  | Tangerine

-- | All flavours of Cúrate LaCroix.
data Curate
  = CeriseLimon
  | KiwiSandia
  | MelonPomelo
  | MurePepino
  | PinaFraise
  | PommeBaya

-- | All flavours of NiCola Lacroix.
data NiCola
  = CoconutCola
  | CoffeaExotica
  | Cubana
  | Lacola

-- | A refreshing, cold beverage to be cracked open and enjoyed.
data Lacroix
  = Regular Regular
  | Curate Curate
  | NiCola NiCola

-- | Describe a LaCroix beverage.
description :: Lacroix -> String
description (Regular r) = regularDescription r
description (Curate  c) = curateDescription c
description (NiCola  n) = niColaDescription n

-- | How to pronoounce @LaCroix@, @Cúrate@, or @NiCola@.
pronunciation :: Lacroix -> String
pronunciation (Regular _ ) = "La-CROY, rhymes with enjoy."
pronunciation (Curate _) = "La-CROY, rhymes with enjoy.\nCúrate is COO-rah-tay."
pronunciation (NiCola _) = "La-CROY, rhymes with enjoy.\nNih-Cola."

regularDescription :: Regular -> String
regularDescription Apricot = "Always Apricot!\nSweet + Tart, fresh and natural.\n100% refreshing, 100% innocent. Always."
regularDescription BeachPlum = "Start dreaming of summer, and excite your imagination, with the taste, taste, taste of Cool Beach Plum!"
regularDescription Berry = "Berry Delicious!\nA subtle fruity berry blend."
regularDescription BlackRazzberry = "An innocently sweet twist that Makes your taste buds sing !!"
regularDescription Coconut = "Enjoy the taste of summer year-round!\nSlightly sweet and a bit creamy flavor of coconut."
regularDescription GuavaSaoPalo = "Savor the sweet tropical delicacy and vibrant essence that satisfies your Constant Cravings !!"
regularDescription Hibiscus = "If the color pink had a flavor - this would be it!\nSlightly botanical, completely refreshing!"
regularDescription Keylime = "Key Lime Surprise!\nStarting with creamy notes of toasted meringue, this fan-favorite combines the tart, crisp KeyLime essence with a rich graham cracker finish."
regularDescription Lemon = "A Lively Lemon delight!\nBright flavor, slightly tart and sweet."
regularDescription Lime = "Classic Crowd Pleaser!\nA refreshing citrus zest - a fresh lime, just picked from the tree."
regularDescription Limoncello = "Squeeze the Day!\nA hint of lemon. A smooth finish.\nSavor the taste of the Amalfi Coast."
regularDescription Mango = "Take me away!\nFresh, juicy and succulent - just like the fruit!"
regularDescription Orange = "The Sunny Side of Life!\nAroma of freshly squeezed with a natural lively citrus delivery."
regularDescription Pamplemousse = "Pamplemousse, Please!\nFrench for “grapefruit”, fresh and ripe. A pantry staple"
regularDescription Passionfruit = "A twist on the tropics: A trace of this particular fruit is added for a refreshing twist on tropics."
regularDescription Pasteque = "Pass the Pasteque!\nThis refreshing watermelon treat captures the lusciousness of sweet watermelon."
regularDescription PeachPear = "A Peach-Pear Combo!\nA delightful combination, with hints of each."
regularDescription Pure = "Pure-ly Perfect!\nThe classic unflavored sparkling water is crisp, clean and thirst-quenching."
regularDescription RazzCranberry = "Mix It Up!\nA flavorful combination of sweet and tart."
regularDescription Tangerine = "Flavor explosion!\nSlightly stronger than our Orange flavor, Tanger-EEN has a flavor explosion of a freshly peeled fruit."

curateDescription :: Curate -> String
curateDescription CeriseLimon = "Cherry Lime.\nBolder flavors, Cúrate is pronounced “coo-rah-tay”, which means to cure yourself."
curateDescription KiwiSandia = "Kiwi Watermelon.\nFreshly cut, bright watermelon wedges and juicy slices of kiwi … now that is a perfect pairing!"
curateDescription MelonPomelo = "Cantaloupe Pink Grapefruit.\nRipe cantaloupe essence infused with pink grapefruit… a tangy duo with a touch of sweetness!"
curateDescription MurePepino = "Blackberry Cucumber.\nSweet & sour blackberry notes and the natural earthiness of crisp cucumber create this unique new flavor combination."
curateDescription PinaFraise = "Pineapple Strawberry.\nCombines the tartness of freshly squeezed pineapple with the sweetness of fresh-picked strawberries."
curateDescription PommeBaya = "Bolder flavors, Cúrate is in unique tall cans, perfect for on-the-go."

niColaDescription :: NiCola -> String
niColaDescription CoconutCola = "Coconut Cola.\nBlends sweet and nutty flavor with crisp cola taste"
niColaDescriptin CoffeaExotica = "Coffea Exotica.\nIntoxicates with rich and smoothly elegant coffee essence."
niColaDescriptin Cubana = "Cubana.\nThis mojito inspired concoction mingles fresh mint and tangy lime notes."
niColaDescriptin Lacola = "NiCola.\nThe first of its kind, a revolutionary experience… Natural cola essenced sparkling water completely Innocent!"

