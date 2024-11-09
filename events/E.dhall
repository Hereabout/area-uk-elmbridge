let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherRugbyClub = ../venues/esher-rugby-club/esher-rugby-club.dhall
let esherTheatre = ../venues/esher-theatre/esher-theatre.dhall

in 
  { eveningWithBrianBlessed = 
    { name = "An Evening with Brian Blessed"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC9JNA2TAMWFS7ZE22GWPCAD"
    , content = Schema.Content.ParagraphsContent
      [ "Brian Blessed, born in 1936 to a South Yorkshire coal miner, trained at the Bristol Old Vic Theatre School and went on to become a highly respected British actor."
      , "Known for his iconic roles in Blackadder, Flash Gordon, and I, Claudius, his career spans over six decades across stage, screen, and television. Beyond acting, Blessed is also an adventurer, having climbed Mount Everest three times, explored Venezuelan jungles, and reached the North Magnetic Pole on foot."
      , "In An Evening with Brian Blessed, he captivates audiences with humorous and compelling stories from both his acting career and his extraordinary adventures."
      ]
    , place = Schema.Place.Venue esherTheatre
    , repetition = None Schema.RepetitionPattern
    , eventType = Some Schema.EventType.VisualArtsEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = Some "https://eshertheatre-tickets.ticketsolve.com/ticketbooth/shows/1173653134"
    , timestamp = 2025-02-13T19:30:00Z
    , duration = Schema.Duration.Mins 140
    , image = Some ./an-evening-with-brian-blessed.jpg as Location
    } : Schema.Event
  }
  
