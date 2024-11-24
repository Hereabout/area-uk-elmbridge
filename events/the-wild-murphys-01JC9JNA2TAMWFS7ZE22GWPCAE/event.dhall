let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherTheatre = ../../venues/esher-theatre/esher-theatre.dhall

let dsl = ../../dsl.dhall

in 
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
  , image = Some ./image.webp as Location
  } : Schema.Event
