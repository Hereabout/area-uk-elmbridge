let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "The Bear Hotel"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7Z1"
  , content = Schema.Content.ParagraphsContent [ "The Bear is a pub and hotel in Esher." ]
  , address = 
    { addressLine1 = "71 High Street"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 9RQ"
    , country = None Text
    } : Schema.Address
  , image = Some ./Bear_Hotel.jpg as Location
  , boundaries =
    [ { longitude = -0.3652981, latitude = 51.3691397 }
    , { longitude = -0.3651693, latitude = 51.3690819 }
    , { longitude = -0.3652015, latitude = 51.3690543 }
    , { longitude = -0.3651251, latitude = 51.3690166 }
    , { longitude = -0.3650708, latitude = 51.3690614 }
    , { longitude = -0.3650440, latitude = 51.3690526 }
    , { longitude = -0.3648508, latitude = 51.3691280 }
    , { longitude = -0.3649353, latitude = 51.3691942 }
    , { longitude = -0.3649353, latitude = 51.3692365 }
    , { longitude = -0.3650822, latitude = 51.3693081 }
    , { longitude = -0.3653001, latitude = 51.3691422 }
    , { longitude = -0.3652981, latitude = 51.3691397 }
    ]
  } : Schema.Venue