let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "St Peter's Church"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVM8WZ207BS8BK6V9HXQW7C"
  , content = Schema.Content.ParagraphsContent [ "St Peter's is the Church of England parish church for the village of Hersham." ]
  , address = 
    { addressLine1 = "Burwood Road"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Hersham"
    , county = Some "Surrey"
    , postalCode = "KT12 4AA"
    , country = None Text
    } : Schema.Address
  , image = Some ./st-peters-church-hersham.jpg as Location
  , boundaries =
    [ { longitude = -0.4023467749357223, latitude = 51.36421393956334 }
    , { longitude = -0.4022730141878128, latitude = 51.36423152374624 }
    , { longitude = -0.4022448509931563, latitude = 51.36418965663302 }
    , { longitude = -0.4020946472883225, latitude = 51.36422063830045 }
    , { longitude = -0.4021093994379043, latitude = 51.36424743323920 }
    , { longitude = -0.4020309448242188, latitude = 51.36426418006800 }
    , { longitude = -0.4019913822412491, latitude = 51.36419970474364 }
    , { longitude = -0.4018452018499374, latitude = 51.36423361710087 }
    , { longitude = -0.4018056392669677, latitude = 51.36416621103285 }
    , { longitude = -0.4018177092075348, latitude = 51.36416411767513 }
    , { longitude = -0.4017908871173859, latitude = 51.36412057581248 }
    , { longitude = -0.4019343852996826, latitude = 51.36408980341344 }
    , { longitude = -0.4019169509410858, latitude = 51.36406677643461 }
    , { longitude = -0.4019994288682938, latitude = 51.36404877351586 }
    , { longitude = -0.4020202159881591, latitude = 51.36408101129561 }
    , { longitude = -0.4022716730833054, latitude = 51.36402616518924 }
    , { longitude = -0.4023025184869766, latitude = 51.36407305652088 }
    , { longitude = -0.4022938013076782, latitude = 51.36407473121042 }
    , { longitude = -0.4023481160402298, latitude = 51.36416809505474 }
    , { longitude = -0.4023233056068419, latitude = 51.36417311911268 }
    , { longitude = -0.4023454338312148, latitude = 51.36420870617425 }
    , { longitude = -0.4023467749357223, latitude = 51.36421393956334 }
    ]
  , phoneNumber = Some "+441932253452"
  } : Schema.Venue


