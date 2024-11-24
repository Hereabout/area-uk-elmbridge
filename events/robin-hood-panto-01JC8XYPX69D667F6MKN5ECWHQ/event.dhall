let Schema = ../../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherTheatre = ../../venues/esher-theatre/esher-theatre.dhall
let dsl = ../../dsl.dhall

in 
  { name = "Robin Hood Panto"
  , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC8XYPX69D667F6MKN5ECWHQ"
  , content = Schema.Content.ParagraphsContent
    [ "The Robin Hood Panto at Esher Theatre features an epic journey of action, comedy and romance as Robin Hood and his band of merry men travel through Sherwood Forest on a quest to defeat the Sheriff of Nottingham."
    ]
  , place = Schema.Place.Venue esherTheatre
  , repetition = 
      Some
        { frequency = Schema.Periodicity.Fixed
          [ 2024-12-05T19:00:00Z
          , 2024-12-06T12:30:00Z
          , 2024-12-06T19:00:00Z
          , 2024-12-07T14:30:00Z
          , 2024-12-07T19:00:00Z
          , 2024-12-08T10:30:00Z
          , 2024-12-08T14:30:00Z
          , 2024-12-11T14:30:00Z
          , 2024-12-11T19:00:00Z
          , 2024-12-12T14:30:00Z
          , 2024-12-12T19:00:00Z
          , 2024-12-13T14:30:00Z
          , 2024-12-13T19:00:00Z
          , 2024-12-14T14:30:00Z
          , 2024-12-14T19:00:00Z
          , 2024-12-15T10:30:00Z
          , 2024-12-15T14:30:00Z
          , 2024-12-18T14:30:00Z
          , 2024-12-18T19:00:00Z
          , 2024-12-19T14:30:00Z
          , 2024-12-19T19:00:00Z
          , 2024-12-20T14:30:00Z
          , 2024-12-20T19:00:00Z
          , 2024-12-21T14:30:00Z
          , 2024-12-21T19:00:00Z
          , 2024-12-22T10:30:00Z
          , 2024-12-22T14:30:00Z
          , 2024-12-23T14:30:00Z
          , 2024-12-23T19:00:00Z
          , 2024-12-24T10:30:00Z
          , 2024-12-24T14:30:00Z
          , 2024-12-26T13:00:00Z
          , 2024-12-26T17:00:00Z
          , 2024-12-27T14:30:00Z
          , 2024-12-27T19:00:00Z
          , 2024-12-28T14:30:00Z
          , 2024-12-28T19:00:00Z
          , 2024-12-29T10:30:00Z
          , 2024-12-29T14:30:00Z
          , 2024-12-30T14:30:00Z
          , 2024-12-30T19:00:00Z
          , 2024-12-31T10:30:00Z
          , 2024-12-31T14:30:00Z
          ]
        , stopCondition = Schema.StopRepitition.Never
        }
  , eventType = Some Schema.EventType.TheatreEvent
  , revisions = [] : List Schema.EventRevision
  , signupUrl = Some "https://eshertheatre-tickets.ticketsolve.com/ticketbooth/shows/1173639402/events/428537504"
  , timestamp = 2024-12-05T14:30:00Z
  , duration = Schema.Duration.Mins 150
  , image = Some ./image.JPG as Location
  } : Schema.Event
