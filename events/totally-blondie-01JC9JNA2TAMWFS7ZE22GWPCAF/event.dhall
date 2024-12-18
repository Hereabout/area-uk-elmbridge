let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherTheatre = ../../venues/esher-theatre-01J8FWH1S4TQWJGP4YGS5GZ7Z2/venue.dhall

let dsl = ../../dsl.dhall

in 
  { name = "Totally Blondie"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC9JNA2TAMWFS7ZE22GWPCAF"
  , content = Schema.Content.ParagraphsContent
    [ "Totally Blondie returns to Esher Theatre with a high-energy tribute show, featuring talented musicians led by a captivating Debbie Harry lookalike. With members who have worked with major artists like Craig David, John Legend, and Beverley Knight, the band delivers an authentic Blondie experience."
    , "Celebrating Blondie's iconic music from their 1970s debut album to their latest hits, Totally Blondie promises an exciting and passionate show that fans won't want to miss."
    ]
  , place = Schema.Place.Venue esherTheatre
  , repetition = None Schema.RepetitionPattern
  , eventType = Some Schema.EventType.MusicEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = Some "https://eshertheatre-tickets.ticketsolve.com/ticketbooth/shows/1173627561"
  , timestamp = 2025-01-18T20:15:00Z
  , duration = Schema.Duration.Hours 2
  , image = Some ./image.webp as Location
  } : Schema.Event
