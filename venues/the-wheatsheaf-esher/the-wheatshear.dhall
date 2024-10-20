let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "The Wheatsheaf"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7Z3"
  , content = Schema.Content.ParagraphsContent [ "The Wheatsheaf is a pub in Esher." ]
  , address = 
    { addressLine1 = "40 Esher Green"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 8AG"
    , country = None Text
    } : Schema.Address
  , image = Some ./the-wheatsheaf.jpg as Location
  , boundaries =
    [ { longitude = -0.3667264, latitude = 51.3716632 } 
    , { longitude = -0.3666915, latitude = 51.3716062 }
    , { longitude = -0.3666566, latitude = 51.3716108 }
    , { longitude = -0.3666104, latitude = 51.3715108 }
    , { longitude = -0.3666312, latitude = 51.3715020 }
    , { longitude = -0.3665916, latitude = 51.3714371 }
    , { longitude = -0.3664528, latitude = 51.3714656 }
    , { longitude = -0.3664642, latitude = 51.3714882 }
    , { longitude = -0.3662744, latitude = 51.3715313 }
    , { longitude = -0.3662898, latitude = 51.3715656 }
    , { longitude = -0.3662047, latitude = 51.3715841 }
    , { longitude = -0.3662637, latitude = 51.3716850 }
    , { longitude = -0.3665661, latitude = 51.3716967 }
    , { longitude = -0.3667257, latitude = 51.3716641 }
    , { longitude = -0.3667264, latitude = 51.3716632 }
    ]
  } : Schema.Venue
