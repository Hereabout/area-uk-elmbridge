let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "The Albert Arms"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC1WASN8N2287EAW7BBRZNTQ"
  , content = Schema.Content.ParagraphsContent [ "The Albert Arms is a dining pub in the centre of Esher." ]
  , address = 
    { addressLine1 = "82 High Street"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 9QS"
    , country = None Text
    } : Schema.Address
  , image = Some ./the-albert-arms.jpg as Location
  , boundaries =
    [ { longitude = -0.3666754, latitude = 51.3692427 }
    , { longitude = -0.3664226, latitude = 51.3690167 }
    , { longitude = -0.3663884, latitude = 51.3690175 }
    , { longitude = -0.3663200, latitude = 51.3690933 }
    , { longitude = -0.3664729, latitude = 51.3691565 }
    , { longitude = -0.3665131, latitude = 51.3691908 }
    , { longitude = -0.3666352, latitude = 51.3692687 }
    , { longitude = -0.3666560, latitude = 51.3692561 }
    , { longitude = -0.3666754, latitude = 51.3692427 }
    ]
  , phoneNumber = Some "+441372877117"
  } : Schema.Venue
