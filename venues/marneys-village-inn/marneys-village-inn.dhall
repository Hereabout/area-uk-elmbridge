let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Marney's Village Inn"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC797Q97QK2C8FWTGNCN0K44"
  , content = Schema.Content.ParagraphsContent [ "Established in 1795, Marney's Village Inn is a public house on Weston Green by Marney's Pond." ]
  , address = 
    { addressLine1 = "Alma Road"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 8JN"
    , country = None Text
    } : Schema.Address
  , image = None Prelude.Location.Type --Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.3486295, latitude = 51.3837416 } 
    , { longitude = -0.3487046, latitude = 51.3835939 }
    , { longitude = -0.3486362, latitude = 51.3835804 }
    , { longitude = -0.3486436, latitude = 51.3835566 }
    , { longitude = -0.3484585, latitude = 51.3835483 }
    , { longitude = -0.3484599, latitude = 51.3835705 }
    , { longitude = -0.3485806, latitude = 51.3835784 }
    , { longitude = -0.3485571, latitude = 51.3836558 }
    , { longitude = -0.3485236, latitude = 51.3837240 }
    , { longitude = -0.3486295, latitude = 51.3837416 }
    ]
  , phoneNumber = Some "+442083984444"
  } : Schema.Venue
