let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamSportsAndSocialClub = ../../venues/hersham-sports-and-social-club/hersham-sports-and-social-club.dhall

let dsl = ../../dsl.dhall

in 
  { name = "The Surrey Blues Club"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JD0W3M4DHPX15SKJ5F31X679"
  , content = Schema.Content.ParagraphsContent
    [ "The Surrey Blues Club provides an opportunity for both listeners and players to enjoy classic blues every month."
    ]
  , place = Schema.Place.Venue hershamSportsAndSocialClub
  , repetition = 
      Some 
        { frequency = (dsl.every 1).months.on.first.week.on [Schema.DayOfWeek.Friday]
        , stopCondition = Schema.StopRepitition.Never
        }
  , eventType = Some Schema.EventType.MusicEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-12-06T19:00:00Z
  , duration = Schema.Duration.Hours 2
  , image = Some ./image.webp as Location
  } : Schema.Event
