let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Bricklayers Arms"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JD252HGW97ZG3P2T908ZSYC6"
  , content = Schema.Content.ParagraphsContent [ "Bricklayers Arms is a victorian pub just off Hersham Green." ]
  , address = 
    { addressLine1 = "6 Queens Road"
    , addressLine2 = Some "Hersham"
    , addressLine3 = None Text
    , locality = "Walton on Thames"
    , county = Some "Surrey"
    , postalCode = "KT12 5LS"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.4022780433297157, latitude = 51.36638365114936 }
    , { longitude = -0.4023109003901482, latitude = 51.36627103382025 }
    , { longitude = -0.4021814838051796, latitude = 51.36625554368268 }
    , { longitude = -0.4021848365664483, latitude = 51.36624298410786 }
    , { longitude = -0.4020795598626137, latitude = 51.36623168048752 }
    , { longitude = -0.4020366445183754, latitude = 51.36638490710314 }
    , { longitude = -0.4021419212222099, latitude = 51.36639621068565 }
    , { longitude = -0.4021499678492546, latitude = 51.36636983565549 }
    , { longitude = -0.4022780433297157, latitude = 51.36638365114936 }
    ]
  , phoneNumber = Some "+441932220936"
  } : Schema.Venue


