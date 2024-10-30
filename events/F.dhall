let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let sandownPark = ../venues/sandown-park-racecourse/sandown-park-racecourse.dhall

in 
  { fireworksSpooktacular = 
    { name = "Fireworks Spooktacular"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JB358DJD7B6ZM0GGB7FESFKW"
    , content = Schema.Content.ParagraphsContent
      [ "Sandown Park Racecourse is hosting a Halloween-themed family event featuring a disco, face painting, a costume competition, and food stalls, culminating in a fireworks display at 7:30 pm; tickets are priced at £8 for adults and £6 for children under 16."
      ]
    , place = Schema.Place.Venue sandownPark
    , repetition = None Schema.RepetitionPattern
    , tags = [] : List Text
    , revisions = [] : List Schema.EventRevision
    , signupUrl = Some "https://www.thejockeyclub.co.uk/sandown/events-tickets/fireworks/tickets/"
    , timestamp = 2024-10-31T18:00:00Z
    , duration = Schema.Duration.Hours 2
    , image = Some ./fireworks-spooktacular.webp as Location
    } : Schema.Event
  }
