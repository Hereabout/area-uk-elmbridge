let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "All Saints Weston"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH001JCTKB9CPP9VZFBS8JT7FTP7X"
  , content = Schema.Content.ParagraphsContent [ "All Saints Weston is a Church of England church in the diocese of Guildford. It serves the community of Weston Green near Esher in Surrey." ]
  , address = 
    { addressLine1 = "Chesnut Avenue"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 8JL"
    , country = None Text
    } : Schema.Address
  , image = Some ./all-saints-weston.jpg as Location
  , boundaries =
    [ { longitude = -0.3496655076742172, latitude = 51.38404125868607 }
    , { longitude = -0.3495340794324875, latitude = 51.38392659233216 }
    , { longitude = -0.3491196781396866, latitude = 51.38410989096485 }
    , { longitude = -0.3492430597543716, latitude = 51.38422037197789 }
    , { longitude = -0.3496655076742172, latitude = 51.38404125868607 }
    ]
  , phoneNumber = Some "+442083981849"
  } : Schema.Venue

