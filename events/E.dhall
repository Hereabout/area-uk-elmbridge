let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherRugbyClub = ../venues/esher-rugby-club/esher-rugby-club.dhall

in 
  { esherRugbyFireworksNight = 
    { name = "Esher Rugby Fireworks Night"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JB5F3F18VCHQTV4GDBSFDK69"
    , content = Schema.Content.ParagraphsContent
      [ "Esher Rugby club is hosting a fantastic family fireworks display with fun fair and food. Gates open at 5pm and the display starts at 8pm."
      ]
    , place = Schema.Place.Venue esherRugbyClub
    , repetition = None Schema.RepetitionPattern
    , tags = [] : List Text
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Schema.Url
    , timestamp = 2024-11-11T17:00:00Z
    , duration = Schema.Duration.Mins 390
    , image = Some ./esher-rugby-fireworks-night.webp as Location
    } : Schema.Event
  }
