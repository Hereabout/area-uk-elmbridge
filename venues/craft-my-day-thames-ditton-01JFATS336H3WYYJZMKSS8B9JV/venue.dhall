let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Craft My Day"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JFATS336H3WYYJZMKSS8B9JV"
  , content = Schema.Content.ParagraphsContent [ "Craft My Day offers a variety of courses and craft for both adults and kids alike. You can learn to sow or try a painting workshop in classes that are beginner friendly and welcoming to all." ]
  , address = 
    { addressLine1 = "29 High Street"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Thames Ditton"
    , county = Some "Surrey"
    , postalCode = "KT7 0SD"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.3339212760329246, latitude = 51.390483246743514 }
    , { longitude = -0.3339286521077156, latitude = 51.390406673823264 }
    , { longitude = -0.3336497023701668, latitude = 51.390395376168440 }
    , { longitude = -0.3336409851908683, latitude = 51.390471112245564 }
    , { longitude = -0.3339212760329246, latitude = 51.390483246743514 }
    ]
  , phoneNumber = Some "+447566225843"
  } : Schema.Venue


