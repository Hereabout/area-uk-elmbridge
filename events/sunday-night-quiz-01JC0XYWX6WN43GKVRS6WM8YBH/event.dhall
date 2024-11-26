let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let theBearHotelEsher = ../../venues/the-bear-hotel-01J8FWH1S4TQWJGP4YGS5GZ7Z1/venue.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Sunday Night Quiz"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC0XYWX6WN43GKVRS6WM8YBH"
  , content = Schema.Content.ParagraphsContent
    [ "Come and put your knowledge to the test with our Quiz master. £2 entry for the quiz and we'll provide you with a little nibble at half time."
    , "There will be multiple rounds of questions along with a round of Play Your Cards Right which is always for a great cause."
    , "A great way to round off the weekend and beat those Sunday Night blues. Can't wait to see you all there!"
    ]
  , place = Schema.Place.Venue theBearHotelEsher
  , repetition = Some ((dsl.every 1).weeks.on [Schema.DayOfWeek.Sunday]).stops.never
  , eventType = Some Schema.EventType.SocialEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-10T20:00:00Z
  , duration = Schema.Duration.Mins 30
  , image = Some ./image.jpg as Location
  } : Schema.Event
