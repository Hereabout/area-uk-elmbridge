let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherLibrary = ../../venues/esher-library-01J8FWH1S4TQWJGP4YGS5GZ7Z0/venue.dhall

let dsl = ../../dsl.dhall

in 
  { name = "Younger Babies Rhymetime"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JBYNRJZX5XBTCR06R9ZDMEV5"
    , content = Schema.Content.ParagraphsContent
      [ "An interactive session for babies under one to bounce, sing, cuddle and bond. Featuring sensory play and engaging rhymes, it's a great opportunity for babies to learn new words and discover the joy of language."
      , "No booking is needed, just come along!"
      ]
    , place = Schema.Place.Venue esherLibrary
    , repetition = Some ((dsl.every 1).weeks.on [Schema.DayOfWeek.Saturday]).stops.never
    , eventType = Some Schema.EventType.ChildrensEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-09T11:30:00Z
    , duration = Schema.Duration.Mins 30
    , image = Some ./image.webp as Location
    } : Schema.Event
