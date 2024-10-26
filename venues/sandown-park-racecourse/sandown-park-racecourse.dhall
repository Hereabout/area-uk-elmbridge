let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Sandown Park Racecourse"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JB31Z4Z7FVVFXE5K9SBHC4XF"
  , content = Schema.Content.ParagraphsContent [ "Sandown Park " ]
  , address = 
    { addressLine1 = "Portsmouth Road"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Esher"
    , county = Some "Surrey"
    , postalCode = "KT10 9AJ"
    , country = None Text
    } : Schema.Address
  , image = Some ./sandown-park-racecourse.jpg as Location
  , boundaries =
    [ { longitude = -0.3688145, latitude = 51.3780130 }
    , { longitude = -0.3692651, latitude = 51.3777584 }
    , { longitude = -0.3691900, latitude = 51.3771086 }
    , { longitude = -0.3688359, latitude = 51.3760769 }
    , { longitude = -0.3686857, latitude = 51.3748776 }
    , { longitude = -0.3682029, latitude = 51.3741004 }
    , { longitude = -0.3673553, latitude = 51.3736180 }
    , { longitude = -0.3656173, latitude = 51.3736381 }
    , { longitude = -0.3639436, latitude = 51.3732026 }
    , { longitude = -0.3624308, latitude = 51.3727805 }
    , { longitude = -0.3611514, latitude = 51.3723413 }
    , { longitude = -0.3604728, latitude = 51.3728068 }
    , { longitude = -0.3597915, latitude = 51.3733962 }
    , { longitude = -0.3590727, latitude = 51.3739604 }
    , { longitude = -0.3585443, latitude = 51.3743104 }
    , { longitude = -0.3579462, latitude = 51.3745761 }
    , { longitude = -0.3566480, latitude = 51.3752193 }
    , { longitude = -0.3569484, latitude = 51.3755878 }
    , { longitude = -0.3565514, latitude = 51.3756950 }
    , { longitude = -0.3568411, latitude = 51.3764118 }
    , { longitude = -0.3554571, latitude = 51.3771153 }
    , { longitude = -0.3542662, latitude = 51.3776646 }
    , { longitude = -0.3534079, latitude = 51.3780398 }
    , { longitude = -0.3532791, latitude = 51.3782542 }
    , { longitude = -0.3533864, latitude = 51.3785222 }
    , { longitude = -0.3536224, latitude = 51.3791988 }
    , { longitude = -0.3543305, latitude = 51.3795806 }
    , { longitude = -0.3552103, latitude = 51.3796744 }
    , { longitude = -0.3567982, latitude = 51.3796208 }
    , { longitude = -0.3586006, latitude = 51.3794533 }
    , { longitude = -0.3612131, latitude = 51.3791819 }
    , { longitude = -0.3637666, latitude = 51.3789323 }
    , { longitude = -0.3650567, latitude = 51.3784299 }
    , { longitude = -0.3672534, latitude = 51.3781485 }
    , { longitude = -0.3688145, latitude = 51.3780130 }
    ]
  , phoneNumber = Some "+443445793012"
  } : Schema.Venue
