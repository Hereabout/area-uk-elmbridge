let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Ember Sports Club"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC7A12E92S9TWYPA3AM4FPMD"
  , content = Schema.Content.ParagraphsContent [ "Ember Sports Club is a sports club with 7 carpet/artificial clay tennis courts, a bowling green, full size and beginner croquet lawns." ]
  , address = 
    { addressLine1 = "2 Grove Way"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 8HL"
    , country = None Text
    } : Schema.Address
  , image = Some ./ember-sports-club.jpg as Location
  , boundaries =
    [ { longitude = -0.3574385, latitude = 51.3856152 } 
    , { longitude = -0.3574305, latitude = 51.3855763 }
    , { longitude = -0.3575955, latitude = 51.3855704 }
    , { longitude = -0.3575934, latitude = 51.3855152 }
    , { longitude = -0.3575411, latitude = 51.3855168 }
    , { longitude = -0.3575277, latitude = 51.3854302 }
    , { longitude = -0.3574399, latitude = 51.3854382 }
    , { longitude = -0.3573614, latitude = 51.3854415 }
    , { longitude = -0.3573554, latitude = 51.3854047 }
    , { longitude = -0.3572816, latitude = 51.3854051 }
    , { longitude = -0.3573071, latitude = 51.3856223 }
    , { longitude = -0.3574385, latitude = 51.3856152 }
    ]
  , phoneNumber = Some "+442083982145"
  } : Schema.Venue
