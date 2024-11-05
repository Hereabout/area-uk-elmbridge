let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherLibrary = ../venues/esher-library/esher-library.dhall
let dsl = ../dsl.dhall

in 
  { pebbleRhymetime = 
    { name = "Pebble Rhymetime"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JBYNRJZX5XBTCR06R9ZDMEV4"
    , content = Schema.Content.ParagraphsContent
      [ "Pebble the penguin rhymetime sessions are aimed at babies and toddlers, aged under five, along with their mums, dads and carers. The events are based entirely on sharing nursery rhymes, action songs and percussion music. It is fun, interactive and noisy!"
      , "Nursery rhymes are great for language development, they have a lot of rhythm which catch baby's attention, and repetition, which is good for speech development. It is also a nice way of introducing babies and toddlers to their local library!"
      , "Rhymetimes are free and are a great opportunity for dads, mums, carers and children to make new friends in a relaxed setting."
      ]
    , place = Schema.Place.Venue esherLibrary
    , repetition = 
        Some 
          { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Thursday, Schema.DayOfWeek.Saturday]
          , stopCondition = Schema.StopRepitition.Never
          }
    , tags = [] : List Text
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-07T10:00:00Z
    , duration = Schema.Duration.Mins 30
    , image = Some ./pebble-rhymetime.jpg as Location
    } : Schema.Event
  }
