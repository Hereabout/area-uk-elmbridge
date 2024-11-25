let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let marneysVillageInn = ../../venues/marneys-village-inn-01JC797Q97QK2C8FWTGNCN0K44/venue.dhall

let dsl = ../../dsl.dhall

in 
  { name = "The Big Quiz Night"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCDV9SAPKMJJ6663FFSQ2TFZ"
  , content = Schema.Content.ParagraphsContent
    [ "The Big Pub Quiz Night at Marney's for teams of 4 people starting at 7pm."
    ]
  , place = Schema.Place.Venue marneysVillageInn
  , repetition = None Schema.RepetitionPattern
  , eventType = Some Schema.EventType.SocialEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-18T19:00:00Z
  , duration = Schema.Duration.Mins 90
  , image = Some ./image.jpg as Location
  } : Schema.Event
