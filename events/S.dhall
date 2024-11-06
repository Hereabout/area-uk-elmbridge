let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherLibrary = ../venues/esher-library/esher-library.dhall
let theBearHotelEsher = ../venues/the-bear-hotel-esher/bear-hotel.dhall
let dsl = ../dsl.dhall

in 
  { storytime = 
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
    , tags = [] : List Text
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-12T10:30:00Z
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
    , tags = [] : List Text
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-10T20:00:00Z
    , duration = Schema.Duration.Mins 30
    , image = Some ./sunday-night-quiz-at-the-bear.jpg as Location
    } : Schema.Event
  }
