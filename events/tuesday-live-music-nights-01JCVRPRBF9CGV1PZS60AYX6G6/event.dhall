let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamSportsAndSocialClub = ../../venues/hersham-sports-and-social-club-01JCVHNAZ57748P66BVJB35ZPX/venue.dhall

let dsl = ../../dsl.dhall

in 
  { name = "Tuesday Live Music Nights"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVRPRBF9CGV1PZS60AYX6G6"
  , content = Schema.Content.ParagraphsContent
    [ "A live music night featuring solo acts, duos, trios and full bands and varied music genres."
    ]
  , place = Schema.Place.Venue hershamSportsAndSocialClub
  , repetition = 
      Some 
        { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Tuesday]
        , stopCondition = Schema.StopRepitition.Never
        }
  , eventType = Some Schema.EventType.MusicEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-19T19:00:00Z
  , duration = Schema.Duration.Hours 2
  , image = Some ./image.webp as Location
  } : Schema.Event
