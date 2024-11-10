let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "The Lookout"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCC4RKX67T8E8GTEBQZ0GYCJ"
  , content = Schema.Content.ParagraphsContent [ "The Lookout is a cafe and restaurant and bar at The Oakwood. It offers excellent views over the surrounding parts of Surrey and South-West London." ]
  , address = 
    { addressLine1 = "More Lane"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 8AN"
    , country = None Text
    } : Schema.Address
  , image = None Prelude.Location.Type
  , boundaries =
    [ { longitude = -0.3650312, latitude = 51.3730763 } 
    , { longitude = -0.3649970, latitude = 51.3729621 }
    , { longitude = -0.3647938, latitude = 51.3729830 }
    , { longitude = -0.3648247, latitude = 51.3730868 }
    , { longitude = -0.3649487, latitude = 51.3730709 }
    , { longitude = -0.3649554, latitude = 51.3730830 }
    , { longitude = -0.3650312, latitude = 51.3730763 }
    ]
  , phoneNumber = Some "+441372467132 "
  } : Schema.Venue



