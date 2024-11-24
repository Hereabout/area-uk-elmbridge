let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let theRoyalGeorgeHersham = ../../venues/the-royal-george-hersham/the-royal-george-hersham.dhall

let dsl = ../../dsl.dhall

in 
  { name = "Tuesday Quiz"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVRPRBF9CGV1PZS60AYX6G7"
  , content = Schema.Content.ParagraphsContent
    [ "1st prize is a £50 voucher with rollover jackpot quesations. Food is served until 10pm."
    ]
  , place = Schema.Place.Venue theRoyalGeorgeHersham
  , repetition = 
      Some 
        { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Tuesday]
        , stopCondition = Schema.StopRepitition.Never
        }
  , eventType = Some Schema.EventType.SocialEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-19T19:30:00Z
  , duration = Schema.Duration.Mins 150
  , image = Some ./image.webp as Location
  } : Schema.Event
