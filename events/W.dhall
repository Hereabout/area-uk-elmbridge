let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let theBearHotelEsher = ../venues/the-bear-hotel-esher/bear-hotel.dhall
let esherTheatre = ../venues/esher-theatre/esher-theatre.dhall
let dsl = ../dsl.dhall

in 
  { wildMurphys = 
    { name = "The Wild Murphys"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC9JNA2TAMWFS7ZE22GWPCAE"
    , content = Schema.Content.ParagraphsContent
      [ "The Wild Murphys, an award-winning Irish music tribute group, bring their lively and unforgettable show to audiences with two energetic sets featuring Irish classics, country hits, and new songs. Led by the charismatic Middi Murphy and backed by talented musicians on fiddle, keys, flute, and vocals, they've been delighting fans since 2005 with performances across the UK and internationally, including notable venues from Dubai to Las Vegas."
      , "Known as \"The best Irish band to never come from Ireland,\" their show promises infectious energy, top-notch musicianship, and favorite hits from artists like The Pogues and The Dubliners. Don't miss this toe-tapping, singalong event!"
      ]
    , place = Schema.Place.Venue esherTheatre
    , repetition = None Schema.RepetitionPattern
    , eventType = Some Schema.EventType.MusicEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = Some "https://eshertheatre-tickets.ticketsolve.com/ticketbooth/shows/1173653132"
    , timestamp = 2025-01-30T19:30:00Z
    , duration = Schema.Duration.Hours 2
    , image = Some ./the-wild-murphys.webp as Location
    } : Schema.Event
    
  , wreathMakingWorkshop = 
    { name = "Wreath making workshop"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC0XYWX6WN43GKVRS6WM8YBK"
    , content = Schema.Content.ParagraphsContent
      [ "Join us for creative fun at our Luxury Christmas Wreath Workshop, where you will take home new skills to create your own seasonal door wreath."
      , "Don't worry, no experience is necessary, as our team of in house florists will be here guide you every step of the way. Our class runs for approximately 2 and a half hours to allow plenty time for our students to create their wreaths. "
      , "All you need to do is wrap up warm and come along with plenty of festive cheer! Everything you need to create your own unique door wreath will be proved."
      ]
    , place = Schema.Place.Venue theBearHotelEsher
    , repetition = 
        Some 
          { frequency = Schema.Periodicity.Fixed 
            [ 2024-12-11T19:00:00Z 
            ]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = None Schema.EventType
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-12-04T11:00:00Z
    , duration = Schema.Duration.Mins 150
    , image = Some ./wreath-making-workshop.webp as Location
    } : Schema.Event
  }
