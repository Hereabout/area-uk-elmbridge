let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "The Barley Mow"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVJ66HKDD90NTD8GYXR88D5"
  , content = Schema.Content.ParagraphsContent [ "The Barley Mow is a local pub in Hersham with a focus on hospitality and community." ]
  , address = 
    { addressLine1 = "Molesey Road"
    , addressLine2 = Some "Hersham"
    , addressLine3 = None Text
    , locality = "Thames Ditton"
    , county = Some "Surrey"
    , postalCode = " KT12 4RS"
    , country = None Text
    } : Schema.Address
  , image = Some ./the-barley-mow-hersham.jpg as Location
  , boundaries =
    [ {longitude = -0.3969823569059371, latitude = 51.36851935078056 }
    , {longitude = -0.3970132023096085, latitude = 51.36851055951311 }
    , {longitude = -0.3970266133546829, latitude = 51.36848669749307 }
    , {longitude = -0.3970091789960861, latitude = 51.36846869631185 }
    , {longitude = -0.3969897329807281, latitude = 51.36846534725407 }
    , {longitude = -0.3969910740852356, latitude = 51.36845655597631 }
    , {longitude = -0.3970085084438324, latitude = 51.36845195102060 }
    , {longitude = -0.3969964385032653, latitude = 51.36843353119318 }
    , {longitude = -0.3969776630401611, latitude = 51.36843981068063 }
    , {longitude = -0.3969696164131165, latitude = 51.36843813615073 }
    , {longitude = -0.3970058262348175, latitude = 51.36837324806979 }
    , {longitude = -0.3970212489366531, latitude = 51.36837534123512 }
    , {longitude = -0.3970450535416603, latitude = 51.36832918691724 }
    , {longitude = -0.3969493322074413, latitude = 51.36830841222610 }
    , {longitude = -0.3969454765319823, latitude = 51.36831374980505 }
    , {longitude = -0.3968264535069466, latitude = 51.36828857945170 }
    , {longitude = -0.3968083485960960, latitude = 51.36832039561332 }
    , {longitude = -0.3968217596411706, latitude = 51.36832332604814 }
    , {longitude = -0.3967501781880855, latitude = 51.36845509076318 }
    , {longitude = -0.3968208376318216, latitude = 51.36846869631182 }
    , {longitude = -0.3968132939189673, latitude = 51.36848491830687 }
    , {longitude = -0.3969823569059371, latitude = 51.36851935078056 }
    ]
  , phoneNumber = Some "+441932227293"
  } : Schema.Venue



