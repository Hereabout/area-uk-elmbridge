let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherLibrary = ../../venues/esher-library-01J8FWH1S4TQWJGP4YGS5GZ7Z0/venue.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Art and drawing club for adults"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JBYNRJZX5XBTCR06R9ZDMEV7"
  , content = Schema.Content.ParagraphsContent
    [ "Think you cannot draw but enjoy some doodling ? Have a go at drawing with us! All levels are welcome and we offer a light, airy atmosphere to discover the artist within you here at Esher Library."
    , "All levels are welcome. Book a free place at the Library Enquiry Desk and see you there."
    , "Light refreshments will be available."
    ]
  , place = Schema.Place.Venue esherLibrary
  , repetition = Some ((dsl.every 1).weeks.on [Schema.DayOfWeek.Wednesday]).stops.never
  , eventType = Some Schema.EventType.VisualArtsEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-06T10:30:00Z
  , duration = Schema.Duration.Mins 90
  , image = Some ./image.jpeg as Location
  } : Schema.Event

