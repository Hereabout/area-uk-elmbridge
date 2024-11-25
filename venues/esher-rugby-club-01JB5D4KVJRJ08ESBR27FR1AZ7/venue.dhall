let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Esher Rugby Club"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JB5D4KVJRJ08ESBR27FR1AZ7"
  , content = Schema.Content.ParagraphsContent [ "Esher Rugby Club is a historic rugby club based in Hersham, known for its strong community focus and competitive teams across various levels." ]
  , address = 
    { addressLine1 = "369 Molesey Road"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT12 3PG"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.webp as Location
  , boundaries =
    [ { longitude = -0.3911868, latitude = 51.3819463 }
    , { longitude = -0.3927183, latitude = 51.3804078 }
    , { longitude = -0.3910741, latitude = 51.3797727 }
    , { longitude = -0.3909293, latitude = 51.3800456 }
    , { longitude = -0.3908569, latitude = 51.3801650 }
    , { longitude = -0.3907496, latitude = 51.3802856 }
    , { longitude = -0.3898591, latitude = 51.3801232 }
    , { longitude = -0.3899637, latitude = 51.3798932 }
    , { longitude = -0.3888935, latitude = 51.3796588 }
    , { longitude = -0.3879413, latitude = 51.3814993 }
    , { longitude = -0.3904465, latitude = 51.3818140 }
    , { longitude = -0.3911868, latitude = 51.3819463 }
    ]
  , phoneNumber = Some "+441932220295"
  } : Schema.Venue
