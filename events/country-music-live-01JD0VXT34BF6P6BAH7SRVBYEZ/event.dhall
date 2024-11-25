let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamSportsAndSocialClub = ../../venues/hersham-sports-and-social-club-01JCVHNAZ57748P66BVJB35ZPX/venue.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Country Music Live"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JD0VXT34BF6P6BAH7SRVBYEZ"
  , content = Schema.Content.ParagraphsContent
    [ "Pop along for an evening of country music played live every month."
    ]
  , place = Schema.Place.Venue hershamSportsAndSocialClub
  , repetition = 
    Some 
      { frequency = (dsl.every 1).months.on.second.week.on [ Schema.DayOfWeek.Friday ]
      , stopCondition = Schema.StopRepitition.Never
      }
  , eventType = Some Schema.EventType.SocialEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-12-13T19:00:00Z
  , duration = Schema.Duration.Mins 210
  , image = Some ./image.webp as Location
  } : Schema.Event
