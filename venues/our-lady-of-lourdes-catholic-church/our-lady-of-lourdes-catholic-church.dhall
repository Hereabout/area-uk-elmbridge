let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "Our Lady of Lourdes"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH001JCTKB9CPP9VZFBS8JT7FTP7Y"
  , content = Schema.Content.ParagraphsContent [ "Our Lady of Lourdes is a Catholic Church on Hampton Court Way with a towering crucifix and stained glass window." ]
  , address = 
    { addressLine1 = "Hampton Court Way"
    , addressLine2 = None Text
    , addressLine3 = None Text
    , locality = "Thames Ditton"
    , county = Some "Surrey"
    , postalCode = "KT7 0LP"
    , country = None Text
    } : Schema.Address
  , image = Some ./our-lady-of-lourdes-catholic-church.jpg as Location
  , boundaries =
    [ { longitude = -0.3471167385578156, latitude = 51.38868793371185 }
    , { longitude = -0.3471381962299347, latitude = 51.38866450065558 }
    , { longitude = -0.3470107913017273, latitude = 51.38861679761112 }
    , { longitude = -0.3469705581665039, latitude = 51.38861930829893 }
    , { longitude = -0.3469584882259369, latitude = 51.38858666934686 }
    , { longitude = -0.3470402956008911, latitude = 51.38856993141371 }
    , { longitude = -0.3470081090927124, latitude = 51.38851720688427 }
    , { longitude = -0.3470429778099060, latitude = 51.38850130582378 }
    , { longitude = -0.3469695523381233, latitude = 51.38845653175537 }
    , { longitude = -0.3469856455922130, latitude = 51.38843477237919 }
    , { longitude = -0.3468961268663406, latitude = 51.38840757314443 }
    , { longitude = -0.3467982262372971, latitude = 51.38840004104577 }
    , { longitude = -0.3467995673418045, latitude = 51.38842514803642 }
    , { longitude = -0.3466989845037460, latitude = 51.38842849563415 }
    , { longitude = -0.3467204421758652, latitude = 51.38845778710368 }
    , { longitude = -0.3466453403234482, latitude = 51.38848289406263 }
    , { longitude = -0.3466024249792098, latitude = 51.38850381651793 }
    , { longitude = -0.3465742617845535, latitude = 51.38852808655403 }
    , { longitude = -0.3465206176042557, latitude = 51.38851469619090 }
    , { longitude = -0.3464763611555100, latitude = 51.38860424417010 }
    , { longitude = -0.3465326875448227, latitude = 51.38861428692317 }
    , { longitude = -0.3465447574853897, latitude = 51.38866868513082 }
    , { longitude = -0.3465916961431503, latitude = 51.38871973569758 }
    , { longitude = -0.3466547280550003, latitude = 51.38869044439576 }
    , { longitude = -0.3466855734586715, latitude = 51.38871220365033 }
    , { longitude = -0.3467351943254471, latitude = 51.38873228910691 }
    , { longitude = -0.3467861562967300, latitude = 51.38873479978838 }
    , { longitude = -0.3467874974012375, latitude = 51.38871973569758 }
    , { longitude = -0.3468451648950576, latitude = 51.38871471433291 }
    , { longitude = -0.3468693047761917, latitude = 51.38876743863477 }
    , { longitude = -0.3469269722700119, latitude = 51.38875237455474 }
    , { longitude = -0.3469591587781906, latitude = 51.38873647357593 }
    , { longitude = -0.3470637649297714, latitude = 51.38877413377986 }
    , { longitude = -0.3471455723047256, latitude = 51.38869379197405 }
    , { longitude = -0.3471167385578156, latitude = 51.38868793371185 }
    ]
  , phoneNumber = Some "+442083982191"
  } : Schema.Venue



