let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherLibrary = ../venues/esher-library/esher-library.dhall
let hershamLibrary = ../venues/hersham-library/hersham-library.dhall
let hershamSportsAndSocialClub = ../venues/hersham-sports-and-social-club/hersham-sports-and-social-club.dhall
let theBearHotelEsher = ../venues/the-bear-hotel-esher/bear-hotel.dhall

let dsl = ../dsl.dhall

in 
  { storytimeEsher = 
    { name = "Storytime"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JBYNRJZX5XBTCR06R9ZDMEV6"
    , content = Schema.Content.ParagraphsContent
      [ "Library storytimes are generally aimed at two to five year olds and provide a fun and enjoyable introduction to books and libraries for young children."
      , "Sharing books and stories with young children can help to build good language and listening skills and give them a head start when they begin school. Library storytimes can foster a life long love of reading and show children that it is a fun place to be."
      , "Sessions are free and generally last 30 minutes."
      ]
    , place = Schema.Place.Venue esherLibrary
    , repetition = 
        Some 
          { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Tuesday]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = Some Schema.EventType.ChildrensEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-12T10:30:00Z
    , duration = Schema.Duration.Mins 30
    , image = Some ./storytime.jpg as Location
    } : Schema.Event

  , storytimeHersham = 
    { name = "Storytime"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVW8ACPTJW7HHZJMCWD1KNR"
    , content = Schema.Content.ParagraphsContent
      [ "Library storytimes are generally aimed at two to five year olds and provide a fun and enjoyable introduction to books and libraries for young children."
      , "Sharing books and stories with young children can help to build good language and listening skills and give them a head start when they begin school. Library storytimes can foster a life long love of reading and show children that it is a fun place to be."
      , "Sessions are free and generally last 30 minutes."
      ]
    , place = Schema.Place.Venue hershamLibrary
    , repetition = 
        Some 
          { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Tuesday]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = Some Schema.EventType.ChildrensEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-12T16:00:00Z
    , duration = Schema.Duration.Mins 30
    , image = Some ./storytime.jpg as Location
    } : Schema.Event

  , sundayNightQuizAtTheBear = 
    { name = "Sunday Night Quiz"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC0XYWX6WN43GKVRS6WM8YBH"
    , content = Schema.Content.ParagraphsContent
      [ "Come and put your knowledge to the test with our Quiz master. £2 entry for the quiz and we'll provide you with a little nibble at half time."
      , "There will be multiple rounds of questions along with a round of Play Your Cards Right which is always for a great cause."
      , "A great way to round off the weekend and beat those Sunday Night blues. Can't wait to see you all there!"
      ]
    , place = Schema.Place.Venue theBearHotelEsher
    , repetition = 
        Some 
          { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Sunday]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = Some Schema.EventType.SocialEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-10T20:00:00Z
    , duration = Schema.Duration.Mins 30
    , image = Some ./sunday-night-quiz-at-the-bear.jpg as Location
    } : Schema.Event

  , surreyBluesClubHershamSportsAndSocial = 
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
    , image = Some ./surrey-blues-club-hersham-sports-and-social.webp as Location
    } : Schema.Event

  , surreyShadowsHershamSportsAndSocial  = 
    { name = "The Surrey Shadows"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVT505XM49F6HQD909YN35M"
    , content = Schema.Content.ParagraphsContent
      [ "The Surrey Shadows Club welcomes everyone to their musical evenings, whether you sing, play guitar, bass, keyboards or drums. We are extremely pleased to have Breakthru' continue as our Backing Band for the Surrey Shadows Club."
      ]
    , place = Schema.Place.Venue hershamSportsAndSocialClub
    , repetition = 
        Some 
          { frequency = (dsl.every 1).months.on.third.week.on [Schema.DayOfWeek.Friday]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = Some Schema.EventType.MusicEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-12-20T19:00:00Z
    , duration = Schema.Duration.Hours 2
    , image = Some ./the-surrey-shadows.webp as Location
    } : Schema.Event
  }
