let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Lower Green Community Centre"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JB0HG5207EQP4JJ1TARKW4MF"
  , content = Schema.Content.ParagraphsContent [ "The Lower Green Community Centre is a welcoming community hub where local people can meet for a chat, take part in activities and receive help and support when needed." ]
  , address = 
    { addressLine1 = "Recreation Ground"
    , addressLine2 = Some "Farm Road"
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 8AU"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.3717649, latitude = 51.3826693 }
    , { longitude = -0.3716362, latitude = 51.3823779 }
    , { longitude = -0.3715047, latitude = 51.3824047 }
    , { longitude = -0.3715450, latitude = 51.3825086 }
    , { longitude = -0.3714645, latitude = 51.3825270 }
    , { longitude = -0.3715530, latitude = 51.3827145 }
    , { longitude = -0.3717595, latitude = 51.3826911 }
    , { longitude = -0.3717649, latitude = 51.3826693 }
    ]
  , phoneNumber = Some "+447754574552"
  } : Schema.Venue
