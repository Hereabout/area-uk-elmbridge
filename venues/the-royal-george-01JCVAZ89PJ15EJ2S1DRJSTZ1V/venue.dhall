let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "The Royal George"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVAZ89PJ15EJ2S1DRJSTZ1V"
  , content = Schema.Content.ParagraphsContent [ "The The Royal George is a pub and in Hersham." ]
  , address = 
    { addressLine1 = "130-132 Hersham Road"
    , addressLine2 = Some "Hersham"
    , addressLine3 = None Text
    , locality = "Walton-on-Thames"
    , county = Some "Surrey"
    , postalCode = "KT12 5QJ"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.401834473013878, latitude = 51.370787441380 }
    , { longitude = -0.401858612895012, latitude = 51.370699532985 }
    , { longitude = -0.401745960116386, latitude = 51.370682788509 }
    , { longitude = -0.401768758893013, latitude = 51.370605763843 }
    , { longitude = -0.401696339249611, latitude = 51.370594042687 }
    , { longitude = -0.401666834950447, latitude = 51.370680276837 }
    , { longitude = -0.401640012860298, latitude = 51.370675253493 }
    , { longitude = -0.401614531874657, latitude = 51.370760650268 }
    , { longitude = -0.401834473013878, latitude = 51.370787441380 }
    ]
  , phoneNumber = Some "+441932229255"
  } : Schema.Venue
