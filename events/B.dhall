let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamSportsAndSocialClub = ../venues/hersham-sports-and-social-club/hersham-sports-and-social-club.dhall

let dsl = ../dsl.dhall

in 
  { ballroomJiveRockAndRollPlusStroll = 
    { name = "Ballroom Jive Rock and Roll plus Stroll"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVS3BQH8WW66PS33QRAJFBF"
    , content = Schema.Content.ParagraphsContent
      [ "Ballroom, Jive Rock & Roll plus Stroll lessons at Hersham Sports and Social Club. Open to all levels of ability."
      , "7pm - 8pm - Strolling. 8:15pm - 10:30pm - Jive and Rock and Roll!"
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
    , timestamp = 2024-11-21T19:00:00Z
    , duration = Schema.Duration.Mins 210
    , image = Some ./ballroom-jive-rock-and-roll-plus-stroll.webp as Location
    } : Schema.Event

  , bingoHershamSportsAndSocial = 
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
    , image = Some ./bingo-hersham-sports-and-social.webp as Location
    } : Schema.Event
  }
