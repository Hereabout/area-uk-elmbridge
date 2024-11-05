let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherTheatre = ../venues/esher-theatre/esher-theatre.dhall

in 
  { ratPackChrimstasInVegas = 
    { name = "The Rat Pack Christmas In Vegas"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JBWZB1EDGWPGWHN6SWGQRQBY"
    , content = Schema.Content.ParagraphsContent
      [ "The Rat Pack Christmas In Vegas is a celebrated tribute show, recreating Christmas at The Sands with classic songs like \"My Way\", \"New York, New York\" alongside Christmas favourites such as \"White Christmas\". Direct from venues like London's Leicester Square Theatre and The O2, the show stars David Alacey as Frank Sinatra, Paul Drakeley as Dean Martin and Des Coleman as Sammy Davis Jr."
      ]
    , place = Schema.Place.Venue esherTheatre
    , repetition = None Schema.RepetitionPattern
    , tags = [] : List Text
    , revisions = [] : List Schema.EventRevision
    , signupUrl = Some "https://eshertheatre-tickets.ticketsolve.com/ticketbooth/shows/1173647594"
    , timestamp = 2024-11-12T19:30:00Z
    , duration = Schema.Duration.Hours 3
    , image = Some ./the-rat-pack-christmas-in-vegas.jpeg as Location
    } : Schema.Event
  }
