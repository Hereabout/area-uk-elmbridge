let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamLibrary = ../../venues/hersham-library-01JCTKB9CPP9VZFBS8JT7FTP7Z/venue.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Pebble Rhymetime"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVW56WPJKFVG6M5XH33YP1V"
  , content = Schema.Content.ParagraphsContent
    [ "Pebble the penguin rhymetime sessions are aimed at babies and toddlers, aged under five, along with their mums, dads and carers. The events are based entirely on sharing nursery rhymes, action songs and percussion music. It is fun, interactive and noisy!"
    , "Nursery rhymes are great for language development, they have a lot of rhythm which catch baby's attention, and repetition, which is good for speech development. It is also a nice way of introducing babies and toddlers to their local library!"
    , "Rhymetimes are free and are a great opportunity for dads, mums, carers and children to make new friends in a relaxed setting."
    ]
  , place = Schema.Place.Venue hershamLibrary
  , repetition = 
      Some 
        { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Tuesday]
        , stopCondition = Schema.StopRepitition.Never
        }
  , eventType = Some Schema.EventType.ChildrensEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-19T10:00:00Z
  , duration = Schema.Duration.Mins 30
  , image = Some ./image.jpg as Location
  } : Schema.Event
