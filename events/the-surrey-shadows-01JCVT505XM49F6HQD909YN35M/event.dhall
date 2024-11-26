let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamSportsAndSocialClub = ../../venues/hersham-sports-and-social-club-01JCVHNAZ57748P66BVJB35ZPX/venue.dhall

let dsl = ../../dsl.dhall

in 
  { name = "The Surrey Shadows"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVT505XM49F6HQD909YN35M"
  , content = Schema.Content.ParagraphsContent
    [ "The Surrey Shadows Club welcomes everyone to their musical evenings, whether you sing, play guitar, bass, keyboards or drums. We are extremely pleased to have Breakthru' continue as our Backing Band for the Surrey Shadows Club."
    ]
  , place = Schema.Place.Venue hershamSportsAndSocialClub
  , repetition = Some ((dsl.every 1).months.on.third.week.on [Schema.DayOfWeek.Friday]).stops.never
  , eventType = Some Schema.EventType.MusicEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-12-20T19:00:00Z
  , duration = Schema.Duration.Hours 2
  , image = Some ./image.webp as Location
  } : Schema.Event
