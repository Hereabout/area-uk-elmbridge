let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamSportsAndSocialClub = ../../venues/hersham-sports-and-social-club-01JCVHNAZ57748P66BVJB35ZPX/venue.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Rock 'N' Roll"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JD0WA0YKF4RV6EEK5FBGAXHM"
  , content = Schema.Content.ParagraphsContent
    [ "A monthly evening of Rock 'n Roll."
    ]
  , place = Schema.Place.Venue hershamSportsAndSocialClub
  , repetition = 
      Some 
        { frequency = (dsl.every 1).months.on.fourth.week.on [Schema.DayOfWeek.Friday]
        , stopCondition = Schema.StopRepitition.Never
        }
  , eventType = Some Schema.EventType.MusicEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-12-27T19:00:00Z
  , duration = Schema.Duration.Hours 2
  , image = Some ./image.webp as Location
  } : Schema.Event
