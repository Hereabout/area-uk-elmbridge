let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Blue House Art Space"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JDJKNBH6AC7CXSJ46DHDWET2"
  , content = Schema.Content.ParagraphsContent [ "A collective of local artists founded Blue House Art Space to provide the community with a place to collect art, meet local artists, exhibit work." ]
  , address = 
    { addressLine1 = "28 High Street"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 9RT"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.3643425554037095, latitude = 51.37065850900891 }
    , { longitude = -0.3641957044601441, latitude = 51.37054464635332 }
    , { longitude = -0.3641118854284287, latitude = 51.37058776349520 }
    , { longitude = -0.3642627596855164, latitude = 51.37069911437274 }
    , { longitude = -0.3643425554037095, latitude = 51.37065850900891 }
    ]
  , phoneNumber = None Text
  } : Schema.Venue

  