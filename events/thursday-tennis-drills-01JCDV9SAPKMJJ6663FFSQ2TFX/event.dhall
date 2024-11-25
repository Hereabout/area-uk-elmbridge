let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let emberSportsClub = ../../venues/ember-sports-club-01JC7A12E92S9TWYPA3AM4FPMD/venue.dhall

let dsl = ../../dsl.dhall

in 
  { name = "Thursday Tennis Drills"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCDV9SAPKMJJ6663FFSQ2TFX"
  , content = Schema.Content.ParagraphsContent
    [ "A coach led session including drills and match play for tennis players of all levels. All are welcome to come along and try it out!"
    , "The sessions are free for members but guests are welcome to come along for five taster sessions costing £5 each."
    ]
  , place = Schema.Place.Venue emberSportsClub
  , repetition =
      Some 
        { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Thursday]
        , stopCondition = Schema.StopRepitition.Never
        }
  , eventType = Some Schema.EventType.SportsEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = None Text
  , timestamp = 2024-11-14T18:30:00Z
  , duration = Schema.Duration.Mins 150
  , image = Some ./image.jpg as Location
  } : Schema.Event
