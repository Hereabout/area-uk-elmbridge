let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Ye Olde Swan"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JFANN01VBYGA1PZC1NTSB4W5"
  , content = Schema.Content.ParagraphsContent [ "Ye Olde Swan is a 13th century pub set on the banks of the Thames in the heart of Thames Ditton." ]
  , address = 
    { addressLine1 = "Summer Road"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Thames Ditton"
    , county = Some "Surrey"
    , postalCode = "KT7 0QQ"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.3320048376917839, latitude =  51.39302326106298 }
    , { longitude = -0.3320826217532158, latitude =  51.39296970484878 }
    , { longitude = -0.3319652751088142, latitude =  51.39290275949284 }
    , { longitude = -0.3317258879542351, latitude =  51.39273748772595 }
    , { longitude = -0.3316333517432213, latitude =  51.39279480990010 }
    , { longitude = -0.3317218646407127, latitude =  51.39285715291302 }
    , { longitude = -0.3316896781325340, latitude =  51.39287765495911 }
    , { longitude = -0.3317895904183388, latitude =  51.39294543716855 }
    , { longitude = -0.3317761793732643, latitude =  51.39295338692730 }
    , { longitude = -0.3318177536129952, latitude =  51.39298393072429 }
    , { longitude = -0.3318338468670845, latitude =  51.39297305211403 }
    , { longitude = -0.3318781033158302, latitude =  51.39299690137165 }
    , { longitude = -0.3318298235535622, latitude =  51.39303204762337 }
    , { longitude = -0.3319552168250083, latitude =  51.39310066641804 }
    , { longitude = -0.3320256248116493, latitude =  51.39303246603100 }
    , { longitude = -0.3320048376917839, latitude =  51.39302326106298 }
    ]
  , phoneNumber = Some "+4402083981814"
  } : Schema.Venue
