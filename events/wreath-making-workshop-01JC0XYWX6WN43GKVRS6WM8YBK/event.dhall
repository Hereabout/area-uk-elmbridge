let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let theBearHotelEsher = ../../venues/the-bear-hotel-01J8FWH1S4TQWJGP4YGS5GZ7Z1/venue.dhall

let dsl = ../../dsl.dhall

in 
  { name = "Wreath making workshop"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC0XYWX6WN43GKVRS6WM8YBK"
  , content = Schema.Content.ParagraphsContent
    [ "Join us for creative fun at our Luxury Christmas Wreath Workshop, where you will take home new skills to create your own seasonal door wreath."
    , "Don't worry, no experience is necessary, as our team of in house florists will be here guide you every step of the way. Our class runs for approximately 2 and a half hours to allow plenty time for our students to create their wreaths. "
    , "All you need to do is wrap up warm and come along with plenty of festive cheer! Everything you need to create your own unique door wreath will be proved."
    ]
  , place = Schema.Place.Venue theBearHotelEsher
  , repetition = 
      Some 
        { frequency = Schema.Periodicity.Fixed 
          [ 2024-12-11T19:00:00Z 
          ]
        , stopCondition = Schema.StopRepetition.Never
        }
  , eventType = None Schema.EventType
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-12-04T11:00:00Z
  , duration = Schema.Duration.Mins 150
  , image = Some ./image.webp as Location
  } : Schema.Event
