let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherLibrary = ../venues/esher-library/esher-library.dhall
let marneysVillageInn = ../venues/marneys-village-inn/marneys-village-inn.dhall
let lowerGreenCommunityCentre = ../venues/lower-green-community-centre/lower-green-community-centre.dhall
let dsl = ../dsl.dhall

in 
  { adviceCafe = 
    { name = "Advice Cafe"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCE0S0T214Z8FQZ8FMMDJWAJ"
    , content = Schema.Content.ParagraphsContent
      [ "A drop-in session with friendly advisors who can provide help and support when needed. Free energy advice and emergency food support available. ."
      ]
    , place = Schema.Place.Venue lowerGreenCommunityCentre
    , repetition =
        Some 
          { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Wednesday]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = None Schema.EventType
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-13T11:00:00Z
    , duration = Schema.Duration.Hours 3
    , image = Some ./advice-cafe-lower-green.jpg as Location
    } : Schema.Event
  
  , aNightCelebratingElvisPresley = 
    { name = "A Night Celebrating Elvis Presley"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCDV9SAPKMJJ6663FFSQ2TFY"
    , content = Schema.Content.ParagraphsContent
      [ "A night of live music celebrating Elvis Presley with the UK's premier Elvis tribute act."
      ]
    , place = Schema.Place.Venue marneysVillageInn
    , repetition = None Schema.RepetitionPattern
    , eventType = Some Schema.EventType.MusicEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-30T19:30:00Z
    , duration = Schema.Duration.Mins 90
    , image = Some ./a-night-celebrating-elvis-presley.jpg as Location
    } : Schema.Event

  , artAndDrawingClubForAdults = 
    { name = "Art and drawing club for adults"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JBYNRJZX5XBTCR06R9ZDMEV7"
    , content = Schema.Content.ParagraphsContent
      [ "Think you cannot draw but enjoy some doodling ? Have a go at drawing with us! All levels are welcome and we offer a light, airy atmosphere to discover the artist within you here at Esher Library."
      , "All levels are welcome. Book a free place at the Library Enquiry Desk and see you there."
      , "Light refreshments will be available."
      ]
    , place = Schema.Place.Venue esherLibrary
    , repetition =
        Some 
          { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Wednesday]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = Some Schema.EventType.VisualArtsEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-06T10:30:00Z
    , duration = Schema.Duration.Mins 90
    , image = Some ./art-and-drawing-club-for-adults.jpeg as Location
    } : Schema.Event
  }
