let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Everyman Esher"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC1WASN8N2287EAW7BBRZNTS"
  , content = Schema.Content.ParagraphsContent [ "The Everyman is a Grade II listed cinema in Esher with a Neo-Georgian façade." ]
  , address = 
    { addressLine1 = "22 High Street"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 9RT"
    , country = None Text
    } : Schema.Address
  , image = Some ./everyman-esher.jpg as Location
  , boundaries =
    [ { longitude = -0.3638577, latitude = 51.3707606 }
    , { longitude = -0.3640247, latitude = 51.3708661 }
    , { longitude = -0.3639355, latitude = 51.3709176 }
    , { longitude = -0.3642131, latitude = 51.3710930 }
    , { longitude = -0.3642366, latitude = 51.3710776 }
    , { longitude = -0.3642849, latitude = 51.3711144 }
    , { longitude = -0.3644861, latitude = 51.3710072 }
    , { longitude = -0.3644418, latitude = 51.3709679 }
    , { longitude = -0.3644686, latitude = 51.3709508 }
    , { longitude = -0.3642333, latitude = 51.3707879 }
    , { longitude = -0.3641421, latitude = 51.3708314 }
    , { longitude = -0.3639610, latitude = 51.3707061 }
    , { longitude = -0.3638577, latitude = 51.3707606 }
    ]
  , phoneNumber = Some "+441233555642"
  } : Schema.Venue
