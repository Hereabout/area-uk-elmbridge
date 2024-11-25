let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Esher Theatre"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7Z2"
  , content = Schema.Content.ParagraphsContent [ "Esher Theatre is a theatre in Esher which opened in September 2021. It is one of the largest workable stages in Elmbridge and has capacity for 200 seated and 350 standing." ]
  , address = 
    { addressLine1 = "Community Walk"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 9RA"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.webp as Location
  , boundaries =
    [ { longitude = -0.3627949, latitude = 51.3704563 }
    , { longitude = -0.3629022, latitude = 51.3703939 }
    , { longitude = -0.3626541, latitude = 51.3702326 }
    , { longitude = -0.3625522, latitude = 51.3702908 }
    , { longitude = -0.3625066, latitude = 51.3702703 }
    , { longitude = -0.3624281, latitude = 51.3703139 }
    , { longitude = -0.3624858, latitude = 51.3703528 }
    , { longitude = -0.3624550, latitude = 51.3703742 }
    , { longitude = -0.3626052, latitude = 51.3704659 }
    , { longitude = -0.3627077, latitude = 51.3704039 }
    , { longitude = -0.3627882, latitude = 51.3704529 }
    , { longitude = -0.3627949, latitude = 51.3704563 }
    ]
  , phoneNumber = Some "+441372469209"
  } : Schema.Venue
