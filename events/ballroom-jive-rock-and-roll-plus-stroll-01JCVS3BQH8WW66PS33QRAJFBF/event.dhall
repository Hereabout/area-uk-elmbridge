let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamSportsAndSocialClub = ../../venues/hersham-sports-and-social-club-01JCVHNAZ57748P66BVJB35ZPX/venue.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Ballroom Jive Rock and Roll plus Stroll"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVS3BQH8WW66PS33QRAJFBF"
  , content = Schema.Content.ParagraphsContent
    [ "Ballroom, Jive Rock & Roll plus Stroll lessons at Hersham Sports and Social Club. Open to all levels of ability."
    , "7pm - 8pm - Strolling. 8:15pm - 10:30pm - Jive and Rock and Roll!"
    ]
  , place = Schema.Place.Venue hershamSportsAndSocialClub
  , repetition = Some ((dsl.every 1).weeks.on [Schema.DayOfWeek.Wednesday]).stops.never
  , eventType = Some Schema.EventType.SocialEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-21T19:00:00Z
  , duration = Schema.Duration.Mins 210
  , image = Some ./image.webp as Location
  } : Schema.Event
