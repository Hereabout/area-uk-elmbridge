let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let esherLibrary = ../venues/esher-library/esher-library.dhall

in 
  { collectAFreeTree = 
    { name = "Collect a free tree"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JBYNRJZX5XBTCR06R9ZDMEV3"
    , content = Schema.Content.ParagraphsContent
      [ "Surrey county council is working to plant 1.2 million trees, one for each Surrey resident, by 2030. To support this, Surrey Libraries are giving away free trees."
      , "The trees are native, broad-leaved, come with a stake and tie and are ready for planting. Information on how to plant and care for your tree is provided."
      , "Trees are provided on a first come first serve basis."
      ]
    , place = Schema.Place.Venue esherLibrary
    , repetition = None Schema.RepetitionPattern
    , eventType = None Schema.EventType
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-16T09:30:00Z
    , duration = Schema.Duration.Mins 150
    , image = Some ./collect-a-free-tree.webp as Location
    } : Schema.Event
  }
