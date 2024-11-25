let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let hershamLibrary = ../../venues/hersham-library-01JCTKB9CPP9VZFBS8JT7FTP7Z/venue.dhall
let dsl = ../../dsl.dhall

in 
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
  , image = Some ./image.jpg as Location
  } : Schema.Event
