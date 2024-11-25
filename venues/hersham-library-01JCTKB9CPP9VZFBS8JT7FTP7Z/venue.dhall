let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Hersham Library"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCTKB9CPP9VZFBS8JT7FTP7Z"
  , content = Schema.Content.ParagraphsContent [ "Hersham library is a library in Hersham, just off the large roundabout between Walton and Esher." ]
  , address = 
    { addressLine1 = "Molesey Road"
    , addressLine2 = Some "Hersham"
    , addressLine3 = None Text
    , locality = "Walton on Thames"
    , county = Some "Surrey"
    , postalCode = "KT12 4RF"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.3955299407243728, latitude = 51.36919376154907 }
    , { longitude = -0.3955701738595962, latitude = 51.36898026200785 }
    , { longitude = -0.3954454511404037, latitude = 51.36896937769086 }
    , { longitude = -0.3954079002141952, latitude = 51.36918287728281 }
    , { longitude = -0.3955299407243728, latitude = 51.36919376154907 }
    ]
  , phoneNumber = None Text
  } : Schema.Venue
