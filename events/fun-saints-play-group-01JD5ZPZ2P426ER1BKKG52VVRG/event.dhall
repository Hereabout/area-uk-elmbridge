let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let allSaintsWeston = ../../venues/all-saints-weston-01JCTKB9CPP9VZFBS8JT7FTP7X/venue.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Fun Saints Play Group"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JD5ZPZ2P426ER1BKKG52VVRG"
  , content = Schema.Content.ParagraphsContent
    [ "A play group for carers and toddlers from one year old featuring a wide variety of toys , including ride-ons; a dressing up area; a mini kitchen; work-bench, a soft mat area with a mini slide and rocker, playdough, jigsaws and craft table; a book corner with bright cushions to relax on."
    , "There is a charge of £2.00 per child."
    ]
  , place = Schema.Place.Venue allSaintsWeston
  , repetition = Some ((dsl.every 1).weeks.on [ Schema.DayOfWeek.Monday ]).stops.never
  , eventType = Some Schema.EventType.ChildrensEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-25T10:00:00Z
  , duration = Schema.Duration.Hours 2
  , image = Some ./image.webp as Location
  } : Schema.Event
