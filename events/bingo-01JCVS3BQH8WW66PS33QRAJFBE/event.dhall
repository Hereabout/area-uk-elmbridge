let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamSportsAndSocialClub = ../../venues/hersham-sports-and-social-club-01JCVHNAZ57748P66BVJB35ZPX/venue.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Bingo"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVS3BQH8WW66PS33QRAJFBE"
  , content = Schema.Content.ParagraphsContent
    [ "A hugely popular bingo night with bingo lovers new and old."
    ]
  , place = Schema.Place.Venue hershamSportsAndSocialClub
  , repetition = 
    Some 
      { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Wednesday]
      , stopCondition = Schema.StopRepitition.Never
      }
  , eventType = Some Schema.EventType.SocialEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-20T19:00:00Z
  , duration = Schema.Duration.Hours 2
  , image = Some ./image.webp as Location
  } : Schema.Event
