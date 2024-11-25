let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let bluehouseArtSpace = ../../venues/bluehouse-artspace-01JDJKNBH6AC7CXSJ46DHDWET2/venue.dhall

let dsl = ../../dsl.dhall

in 
  { name = "Watercolour Workshop for Adults"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVRPRBF9CGV1PZS60AYX6G7"
  , content = Schema.Content.MarkdownContent ./event.md as Text
  , place = Schema.Place.Venue bluehouseArtSpace
  , repetition = 
      Some 
        { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Tuesday]
        , stopCondition = Schema.StopRepitition.StopOn 2024-12-10
        }
  , eventType = Some Schema.EventType.VisualArtsEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = Some "https://parulofthesea.com/collections/workshops/products/watercolour-workshop-for-adults-tuesday-afternoons"
  , timestamp = 2024-11-26T13:30:00Z
  , duration = Schema.Duration.Mins 150
  , image = Some ./image.webp as Location
  } : Schema.Event
