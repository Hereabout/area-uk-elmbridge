let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Watermans Arms"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVJWN4JB0BNND214STQQ2S1"
  , content = Schema.Content.ParagraphsContent [ "The Watermans Arms is a popular local pub, catering for the younger element but quiet at lunchtimes." ]
  , address = 
    { addressLine1 = "1 Queens Road"
    , addressLine2 = Some "Hersham"
    , addressLine3 = None Text
    , locality = "Walton on Thames"
    , county = Some "Surrey"
    , postalCode = "KT12 5LT"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.3996162861585617, latitude = 51.36595474091845 }
    , { longitude = -0.3996873646974563, latitude = 51.36584505312800 }
    , { longitude = -0.3995908051729201, latitude = 51.36581825912398 }
    , { longitude = -0.3995720297098159, latitude = 51.36579816361066 }
    , { longitude = -0.3993802517652511, latitude = 51.36576132181338 }
    , { longitude = -0.3992743045091629, latitude = 51.36578644122383 }
    , { longitude = -0.3992018848657607, latitude = 51.36589194259727 }
    , { longitude = -0.3992917388677596, latitude = 51.36591789924714 }
    , { longitude = -0.3992407768964766, latitude = 51.36599744372765 }
    , { longitude = -0.3992810100317001, latitude = 51.36600916606048 }
    , { longitude = -0.3992997854948043, latitude = 51.36598572139187 }
    , { longitude = -0.3994231671094893, latitude = 51.36601753915352 }
    , { longitude = -0.3994607180356978, latitude = 51.36596227671120 }
    , { longitude = -0.3994848579168319, latitude = 51.36596981250273 }
    , { longitude = -0.3995116800069808, latitude = 51.36593045891115 }
    , { longitude = -0.3996162861585617, latitude = 51.36595474091845 }
    ]
  , phoneNumber = Some "+441932254580"
  } : Schema.Venue


