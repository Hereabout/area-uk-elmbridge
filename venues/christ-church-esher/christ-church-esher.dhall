let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Christ Church"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC1WASN8N2287EAW7BBRZNTR"
  , content = Schema.Content.ParagraphsContent [ "Christ Church is an Anglican Church in the centre of Esher." ]
  , address = 
    { addressLine1 = "Church Street"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 8QS"
    , country = None Text
    } : Schema.Address
  , image = Some ./christ-church-esher.jpg as Location
  , boundaries =
    [ { longitude = -0.3671025, latitude = 51.3700888 }
    , { longitude = -0.3671193, latitude = 51.3699444 }
    , { longitude = -0.3667418, latitude = 51.3699272 }
    , { longitude = -0.3667405, latitude = 51.3699174 }
    , { longitude = -0.3666479, latitude = 51.3699159 }
    , { longitude = -0.3666446, latitude = 51.3699515 }
    , { longitude = -0.3665654, latitude = 51.3699477 }
    , { longitude = -0.3665547, latitude = 51.3700260 }
    , { longitude = -0.3666063, latitude = 51.3700285 }
    , { longitude = -0.3665990, latitude = 51.3700842 }
    , { longitude = -0.3667244, latitude = 51.3700892 }
    , { longitude = -0.3667291, latitude = 51.3700716 }
    , { longitude = -0.3668705, latitude = 51.3700766 }
    , { longitude = -0.3668685, latitude = 51.3701005 }
    , { longitude = -0.3669450, latitude = 51.3701034 }
    , { longitude = -0.3669490, latitude = 51.3700825 }
    , { longitude = -0.3671025, latitude = 51.3700888 }
    ]
  , phoneNumber = Some "+441372462282"
  } : Schema.Venue
