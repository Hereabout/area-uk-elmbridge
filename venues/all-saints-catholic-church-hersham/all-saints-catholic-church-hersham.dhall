let Schema = ../../types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

in 
  { name = "All Saints Catholic Church"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JD25PGCCFVTAAZZCP51W17BP"
  , content = Schema.Content.ParagraphsContent [ "All Saints is a large cruciform church just off Hersham Green that first celebrated mass in 1960." ]
  , address = 
    { addressLine1 = "13 Queens Road"
    , addressLine2 = Some "Hersham"
    , addressLine3 = None Text
    , locality = "Walton on Thames"
    , county = Some "Surrey"
    , postalCode = "KT12 5LU"
    , country = None Text
    } : Schema.Address
  , image = Some ./all-saints-catholic-church-hersham.jpg as Location
  , boundaries =
    [ { longitude = -0.4011689499020577, latitude = 51.36668759096003 }
    , { longitude = -0.4011582210659981, latitude = 51.36652682965863 }
    , { longitude = -0.4010737314820290, latitude = 51.36652850425838 }
    , { longitude = -0.4010623320937157, latitude = 51.36641295672862 }
    , { longitude = -0.4009094461798668, latitude = 51.36641798054035 }
    , { longitude = -0.4009094461798668, latitude = 51.36642719086035 }
    , { longitude = -0.4008276388049126, latitude = 51.36642928411465 }
    , { longitude = -0.4008330032229424, latitude = 51.36649668685175 }
    , { longitude = -0.4009161517024040, latitude = 51.36649250034921 }
    , { longitude = -0.4009208455681801, latitude = 51.36653520265699 }
    , { longitude = -0.4008564725518227, latitude = 51.36653645860662 }
    , { longitude = -0.4008759185671807, latitude = 51.36670015041295 }
    , { longitude = -0.4011689499020577, latitude = 51.36668759096003 }
    ]
  , phoneNumber = Some "+441932221007"
  } : Schema.Venue


