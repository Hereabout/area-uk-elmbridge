let Schema = ../types.dhall

let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let emberSportsClub = ../venues/ember-sports-club/ember-sports-club.dhall
let esherTheatre = ../venues/esher-theatre/esher-theatre.dhall
let hershamSportsAndSocialClub = ../venues/hersham-sports-and-social-club/hersham-sports-and-social-club.dhall
let marneysVillageInn = ../venues/marneys-village-inn/marneys-village-inn.dhall

let dsl = ../dsl.dhall

in 
  { theBigQuizNightMarneys = 
    { name = "The Big Quiz Night"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCDV9SAPKMJJ6663FFSQ2TFZ"
    , content = Schema.Content.ParagraphsContent
      [ "The Big Pub Quiz Night at Marney's for teams of 4 people starting at 7pm."
      ]
    , place = Schema.Place.Venue marneysVillageInn
    , repetition = None Schema.RepetitionPattern
    , eventType = Some Schema.EventType.SocialEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-18T19:00:00Z
    , duration = Schema.Duration.Mins 90
    , image = Some ./the-big-quiz-night-marneys.jpg as Location
    } : Schema.Event

  , theSurreyShadows = 
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
    
  , thursdayTennisDrills = 
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
    , image = Some ./thursday-tennis-drills.jpg as Location
    } : Schema.Event
    
  , totallyBlondie = 
    { name = "Totally Blondie"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JC9JNA2TAMWFS7ZE22GWPCAF"
    , content = Schema.Content.ParagraphsContent
      [ "Totally Blondie returns to Esher Theatre with a high-energy tribute show, featuring talented musicians led by a captivating Debbie Harry lookalike. With members who have worked with major artists like Craig David, John Legend, and Beverley Knight, the band delivers an authentic Blondie experience."
      , "Celebrating Blondie's iconic music from their 1970s debut album to their latest hits, Totally Blondie promises an exciting and passionate show that fans won't want to miss."
      ]
    , place = Schema.Place.Venue esherTheatre
    , repetition = None Schema.RepetitionPattern
    , eventType = Some Schema.EventType.MusicEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = Some "https://eshertheatre-tickets.ticketsolve.com/ticketbooth/shows/1173627561"
    , timestamp = 2025-01-18T20:15:00Z
    , duration = Schema.Duration.Hours 2
    , image = Some ./totally-blondie.webp as Location
    } : Schema.Event

  , tuesdayLiveMusicNightsHershamsSportsAndSocial = 
    { name = "Tuesday Live Music Nights"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVRPRBF9CGV1PZS60AYX6G6"
    , content = Schema.Content.ParagraphsContent
      [ "A live music night featuring solo acts, duos, trios and full bands and varied music genres."
      ]
    , place = Schema.Place.Venue hershamSportsAndSocialClub
    , repetition = 
        Some 
          { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Tuesday]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = Some Schema.EventType.MusicEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-19T19:00:00Z
    , duration = Schema.Duration.Hours 2
    , image = Some ./tuesday-live-music-nights-hershams-sports-and-social.webp as Location
    } : Schema.Event

  , tuesdayQuizAtRoyalGeorge = 
    { name = "Tuesday Quiz"
    , id = "01J8FWH1S4TQWJGP4YGS5GZ7NH01JCVRPRBF9CGV1PZS60AYX6G7"
    , content = Schema.Content.ParagraphsContent
      [ "1st prize is a £50 voucher with rollover jackpot quesations. Food is served until 10pm."
      ]
    , place = Schema.Place.Venue hershamSportsAndSocialClub
    , repetition = 
        Some 
          { frequency = (dsl.every 1).weeks.on [Schema.DayOfWeek.Tuesday]
          , stopCondition = Schema.StopRepitition.Never
          }
    , eventType = Some Schema.EventType.SocialEvent
    , revisions = [] : List Schema.EventRevision
    , signupUrl = None Text
    , timestamp = 2024-11-19T19:30:00Z
    , duration = Schema.Duration.Mins 150
    , image = Some ./tuesday-quiz-at-royal-george.webp as Location
    } : Schema.Event
  }
