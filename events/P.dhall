let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let christChurchEsher = ../venues/christ-church-esher/christ-church-esher.dhall
let esherLibrary = ../venues/esher-library/esher-library.dhall
let dsl = ../dsl.dhall

in 
  { parishCommunionEsher = 
    { name = "Parish Communion"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCEFP6EYW8ZF83YGZE1CPQYQ"
    , content = Schema.Content.ParagraphsContent
      [ "On the first Sunday of the month, Parish Communinion is a 40 minute service for all ages with modern and traditional hymns."
      , "On the other Sundays of the month, the service lasts for 70 minutes. There are four, usually traditional, hymns led by a choir. Children and young people are welcome and will go off to their teaching groups after the gathering prayer and return for communion."
      ]
    , place = Schema.Place.Venue christChurchEsher
    , repetition = 
        Some 
          { frequency = (dsl.every 1).weeks.on [ Schema.DayOfWeek.Sunday ]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = Some Schema.EventType.ReligiousEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-17T10:30:00Z
    , duration = Schema.Duration.Mins 70
    , image = Some ./anglican-service.webp as Location
    } : Schema.Event

  , pebbleRhymetime = 
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
    , eventType = Some Schema.EventType.ChildrensEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-07T10:00:00Z
    , duration = Schema.Duration.Mins 30
    , image = Some ./pebble-rhymetime.jpg as Location
    } : Schema.Event
  }
