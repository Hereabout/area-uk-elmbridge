let Schema = ./types.dhall
let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let allVenues = ./venues/venues.dhall
let eventsA = ./events/A.dhall
let eventsB = ./events/B.dhall
let eventsC = ./events/C.dhall
let eventsE = ./events/E.dhall
let eventsF = ./events/F.dhall
let eventsP = ./events/P.dhall
let eventsR = ./events/R.dhall
let eventsS = ./events/S.dhall
let eventsT = ./events/T.dhall
let eventsW = ./events/W.dhall
let eventsY = ./events/Y.dhall


in 
  { name = "Elmbridge"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH"
  , boundaries = Schema.MultiPolygon.WKT (./elmbridge-wkt.txt as Text)
  , events = 
    [ eventsA.adviceCafe
    , eventsA.aNightCelebratingElvisPresley
    , eventsA.artAndDrawingClubForAdults
    , eventsB.ballroomJiveRockAndRollPlusStroll
    , eventsB.bingoHershamSportsAndSocial
    , eventsC.collectAFreeTree
    , eventsC.countryMusicLiveHershamSportsAndSocial
    , eventsE.eveningWithBrianBlessed
    , eventsF.funSaintsPlayGroupWeston
    , eventsP.parishCommunionEsher
    , eventsP.pebbleRhymetimeEsher
    , eventsP.pebbleRhymetimeHersham
    , eventsR.ratPackChrimstasInVegas
    , eventsR.robinHoodPanto
    , eventsR.rockNRollHershamSportsAndSocial
    , eventsS.storytimeEsher
    , eventsS.storytimeHersham
    , eventsS.sundayNightQuizAtTheBear
    , eventsS.surreyBluesClubHershamSportsAndSocial
    , eventsS.surreyShadowsHershamSportsAndSocial
    , eventsT.theBigQuizNightMarneys
    , eventsT.thursdayTennisDrills
    , eventsT.totallyBlondie
    , eventsT.tuesdayLiveMusicNightsHershamsSportsAndSocial
    , eventsT.tuesdayQuizAtRoyalGeorge
    , eventsW.wildMurphys
    , eventsW.wreathMakingWorkshop
    , eventsY.youngerBabiesRhymetime
    ] : List Schema.Event
  , venues = allVenues : List Schema.Venue
  , tzLabel = Schema.TZLabel.Europe/London
  , communities = 
    [ { name = "Ash Estates"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7P1"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.390458, longitude = -0.424276 }
      , image = None Prelude.Location.Type
      }
    , { name = "Ashley Park"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7P2"
      , content = Schema.Content.ParagraphsContent [ "Ashley Park is a private residential neighbourhood in Walton-on-Thames in Surrey." ]
      , centre = { latitude = 51.376631, longitude = -0.420541 }
      , image = None Prelude.Location.Type
      }
    , { name = "Brooklands"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7P3"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.361391, longitude = -0.468122 }
      , image = None Prelude.Location.Type
      }
    , { name = "Burwood Park"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7P4"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.364778, longitude = -0.41845 }
      , image = None Prelude.Location.Type
      }
    , { name = "Claremont Park"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7P5"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.357368, longitude = -0.369871 }
      , image = None Prelude.Location.Type
      }
    , { name = "Claygate"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7P6"
      , content = Schema.Content.ParagraphsContent [ "Claygate is a village in Surrey with strong community spirit, independent shops, and excellent transport links." ]
      , centre = { latitude = 51.356964, longitude = -0.34116 }
      , image = Some ./claygate.jpg as Location
      }
    , { name = "The Clump"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7P7"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.394735, longitude = -0.341231 }
      , image = None Prelude.Location.Type
      }
    , { name = "Cobham"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7P8"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.328737, longitude = -0.413231 }
      , image = Some ./cobham.jpg as Location
      }
    , { name = "Desborough Island"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7P9"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.385049, longitude = -0.44339 }
      , image = None Prelude.Location.Type
      }
    , { name = "Ditton Hill"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PA"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.379913, longitude = -0.312122 }
      , image = None Prelude.Location.Type
      }
    , { name = "Long Ditton"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PB"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.381741, longitude = -0.31296 }
      , image = None Prelude.Location.Type
      }
    , { name = "Downside"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PC"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.310242, longitude = -0.408847 }
      , image = None Prelude.Location.Type
      }
    , { name = "Esher"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PD"
      , content = Schema.Content.ParagraphsContent [ "Esher is a town in the borough of Elmbridge in Surrey, England, to the east of the River Mole." ]
      , centre = { latitude = 51.370219, longitude = -0.365400 }
      --, centre = { latitude = 51.366845, longitude = -0.372408 }
      , image = Some ./esher.jpg as Location
      }
    , { name = "Fairmile"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PE"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.338202, longitude = -0.382037 }
      , image = None Prelude.Location.Type
      }
    , { name = "Giggs Hill"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PF"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.385614, longitude = -0.332219 }
      , image = None Prelude.Location.Type
      }
    , { name = "Hare Lane"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PG"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.363428, longitude = -0.353136 }
      , image = None Prelude.Location.Type
      }
    , { name = "Hatchford"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PH"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.311049, longitude = -0.435364 }
      , image = None Prelude.Location.Type
      }
    , { name = "Hersham"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PK"
      , content = Schema.Content.ParagraphsContent [ "Hersham is a village in Surrey centred on Hersham Green upon which events take place throughout the year." ]
      , centre = { latitude = 51.364505, longitude = -0.398348 }
      , image = Some ./hersham.jpg as Location
      }
    , { name = "Hinchley Wood"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PM"
      , content = Schema.Content.ParagraphsContent [ "Hinchley Wood is a suburb in the borough of Elmbridge, centred around its station on the New Guildford Line." ]
      , centre = { latitude = 51.37718, longitude = -0.339854 }
      , image = Some ./hinchley-wood.jpg as Location
      }
    , { name = "Hurst Park"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PN"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.408467, longitude = -0.367522 }
      , image = None Prelude.Location.Type
      }
    , { name = "Lower Green"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PP"
      , content = Schema.Content.ParagraphsContent [ "Lower Green is a residential and commercial area within Esher, sitting on the banks of the River Ember and the River Mole." ]
      , centre = { latitude = 51.376672, longitude = -0.367748 }
      , image = None Prelude.Location.Type
      }
    , { name = "May's Green"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PQ"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.306038, longitude = -0.430513 }
      , image = None Prelude.Location.Type
      }
    , { name = "Molesey, East"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PR"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.399002, longitude = -0.35689 }
      , image = None Prelude.Location.Type
      }
    , { name = "Molesey, West"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PS"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.401909, longitude = -0.371882 }
      , image = None Prelude.Location.Type
      }
    , { name = "Oatlands Park"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PT"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.3722, longitude = -0.435435 }
      , image = None Prelude.Location.Type
      }
    , { name = "Oxshott"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PV"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.33198, longitude = -0.354981 }
      , image = None Prelude.Location.Type
      }
    , { name = "Rydens"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PW"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.38093, longitude = -0.396697 }
      , image = None Prelude.Location.Type
      }
    , { name = "St George's Hill"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PX"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.352091, longitude = -0.444737 }
      , image = None Prelude.Location.Type
      }
    , { name = "Stoke D'Abernon"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PY"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.319736, longitude = -0.379816 }
      , image = None Prelude.Location.Type
      }
    , { name = "Thames Ditton"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7PZ"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.387309, longitude = -0.324971 }
      , image = None Prelude.Location.Type
      }
    , { name = "Walton-on-Thames"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7Q0"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.387324, longitude = -0.418126 }
      , image = None Prelude.Location.Type
      }
    , { name = "West End"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7Q1"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.365587, longitude = -0.378917 }
      , image = None Prelude.Location.Type
      }
    , { name = "Weston Green"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7Q2"
      , content = Schema.Content.ParagraphsContent [ "Weston Green is a suburban village in Surrey, known for its historic village green, period cottages, local amenities, and close proximity to Esher and Thames Ditton." ]
      , centre = { latitude = 51.384388, longitude = -0.340887 }
      , image = Some ./weston-green.jpg as Location
      }
    , { name = "Weybridge"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7Q3"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.367944, longitude = -0.453538 }
      , image = None Prelude.Location.Type
      }
    , { name = "Whiteley Village"
      , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01J8FWH1S4TQWJGP4YGS5GZ7Q4"
      , content = Schema.Content.ParagraphsContent [""]
      , centre = { latitude = 51.352291, longitude = -0.42606 }
      , image = None Prelude.Location.Type
      }
    ] : List Schema.Community
  } : Schema.Area

