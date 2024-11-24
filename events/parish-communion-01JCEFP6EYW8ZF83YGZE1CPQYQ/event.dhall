let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let christChurchEsher = ../../venues/christ-church-esher/christ-church-esher.dhall
let dsl = ../../dsl.dhall

in 
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
