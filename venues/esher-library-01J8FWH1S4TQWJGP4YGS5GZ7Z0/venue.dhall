let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Esher Library"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7Z0"
  , content = Schema.Content.ParagraphsContent [ "Esher Library is a public library in Esher situated behind the High Street shops." ]
  , address = 
    { addressLine1 = "Old Church Path"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 9NS"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.3636515421994324, latitude = 51.36947107250434 }
    , { longitude = -0.3633538213191634, latitude = 51.36960680534112 }
    , { longitude = -0.3636149711168402, latitude = 51.36976821758608 }
    , { longitude = -0.3638591738113661, latitude = 51.36961239485699 }
    , { longitude = -0.3636515421994324, latitude = 51.36947107250434 }
    ]
  , phoneNumber = None Text
  } : Schema.Venue