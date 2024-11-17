let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Hersham Sports and Social Club"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVHNAZ57748P66BVJB35ZPX"
  , content = Schema.Content.ParagraphsContent [ "Hersham Sports and Social Club is a C.I.U. Affiliated social club that was established in 1921." ]
  , address = 
    { addressLine1 = "128 Hersham Road"
    , addressLine2 = Some "Hersham"
    , addressLine3 = None Text
    , locality = "Walton on Thames"
    , county = Some "Surrey"
    , postalCode = "KT12 5QL"
    , country = None Text
    } : Schema.Address
  , image = Some ./hersham-sports-and-social-club.jpg as Location
  , boundaries =
    [ { longitude = -0.402633100748062, latitude = 51.37078158082557 }
    , { longitude = -0.402356833219528, latitude = 51.37078074360346 }
    , { longitude = -0.402359515428543, latitude = 51.37050529669330 }
    , { longitude = -0.402635782957077, latitude = 51.37050697114759 }
    , { longitude = -0.402633100748062, latitude = 51.37078158082557 }
    ]
  , phoneNumber = Some "+441932224361"
  } : Schema.Venue
