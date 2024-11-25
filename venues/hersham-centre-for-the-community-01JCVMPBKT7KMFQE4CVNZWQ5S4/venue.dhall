let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Hersham Centre for the Community"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVMPBKT7KMFQE4CVNZWQ5S4"
  , content = Schema.Content.ParagraphsContent [ "Hersham Centre for the Community aims to promote an active and full life for residents, offering a range of leisure activities and opportunities to learn new skills." ]
  , address = 
    { addressLine1 = "7 Queens Road"
    , addressLine2 = Some "Hersham"
    , addressLine3 = None Text
    , locality = "Walton-on-Thames"
    , county = Some "Surrey"
    , postalCode = "KT12 5LU"
    , country = None Text
    } : Schema.Address
  , image = Some ./image.jpg as Location
  , boundaries =
    [ { longitude = -0.4002459347248078, latitude = 51.36615611362083 }
    , { longitude = -0.4002875089645386, latitude = 51.36615360170069 }
    , { longitude = -0.4003626108169556, latitude = 51.36605982324991 }
    , { longitude = -0.4003518819808961, latitude = 51.36602800551765 }
    , { longitude = -0.4002016782760621, latitude = 51.36597944156785 }
    , { longitude = -0.4001346230506898, latitude = 51.36599869969203 }
    , { longitude = -0.4000635445117951, latitude = 51.36610168865346 }
    , { longitude = -0.4001373052597047, latitude = 51.36613015710600 }
    , { longitude = -0.4000501334667206, latitude = 51.36629678092919 }
    , { longitude = -0.4000058770179749, latitude = 51.36628757058298 }
    , { longitude = -0.3999428451061249, latitude = 51.36640353708020 }
    , { longitude = -0.4000179469585418, latitude = 51.36641693391294 }
    , { longitude = -0.4000501334667205, latitude = 51.36636418386132 }
    , { longitude = -0.4001292586326599, latitude = 51.36637674340295 }
    , { longitude = -0.4001453518867493, latitude = 51.36633822746444 }
    , { longitude = -0.4001627862453461, latitude = 51.36633990207113 }
    , { longitude = -0.4002459347248078, latitude = 51.36615611362083 }
    ]
  , phoneNumber = Some "+441932246267"
  } : Schema.Venue


