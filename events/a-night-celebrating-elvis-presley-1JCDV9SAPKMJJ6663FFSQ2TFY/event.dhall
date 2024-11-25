let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let marneysVillageInn = ../../venues/marneys-village-inn-01JC797Q97QK2C8FWTGNCN0K44/venue.dhall
let dsl = ../../dsl.dhall

in 
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
  , image = Some ./image.jpg as Location
  } : Schema.Event

