let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let lowerGreenCommunityCentre = ../../venues/lower-green-community-centre/lower-green-community-centre.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Advice Cafe"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCE0S0T214Z8FQZ8FMMDJWAJ"
  , content = Schema.Content.ParagraphsContent
    [ "A drop-in session with friendly advisors who can provide help and support when needed. Free energy advice and emergency food support available. ."
    ]
  , place = Schema.Place.Venue lowerGreenCommunityCentre
  , repetition =
      Some 
        { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Wednesday]
        , stopCondition = Schema.StopRepitition.Never
        }
  , eventType = None Schema.EventType
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-13T11:00:00Z
  , duration = Schema.Duration.Hours 3
  , image = Some ./image.jpg as Location
  } : Schema.Event

