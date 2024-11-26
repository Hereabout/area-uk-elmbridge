let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall

let Latitude = Double
let Longitude = Double

let GPSPosition = 
  { longitude : Longitude
  , latitude : Latitude
  }

let Address = 
  { addressLine1 : Text
  , addressLine2 : Optional Text
  , addressLine3 : Optional Text
  , locality : Text
  , county : Optional Text
  , postalCode : Text
  , country : Optional Text
  }

let Content =
  < MarkdownContent : Text
  | ParagraphsContent : List Text
  >

let Venue = 
  { name : Text
  , id : Text
  , address : Address
  , boundaries : List GPSPosition
  , image : Optional Prelude.Location.Type
  , content : Content
  , phoneNumber : Optional Text
  }

let Place =
  < Venue : Venue
  | GPSPos : GPSPosition
  >

let Timestamp =
  { date : Date
  , time : Time
  , timeZone : TimeZone
  }

let StopRepetition =
  < StopOn : Date
  | StopAfter : Natural
  | Never
  >

let DayOfWeek =
  < Monday
  | Tuesday
  | Wednesday
  | Thursday
  | Friday
  | Saturday
  | Sunday
  >

let WeeklyPeriodicity =
  { n : Natural
  , daysOfTheWeek : List DayOfWeek 
  }

let MonthlyPeriodicity =
  < OnDays : { nMonthly : Natural, daysOfTheMonth : List Natural }
  | OnFirst : { nMonthly : Natural, occurrence : Natural, daysOfTheWeek: List DayOfWeek }
  | OnLast : { nMonthly : Natural, occurrence: Natural, daysOfTheWeek: List DayOfWeek }
  >

let Periodicity =
  < Daily : Natural
  | Weekly : WeeklyPeriodicity
  | MonthlyOn : MonthlyPeriodicity 
  | Fixed : List Timestamp
  >

let RepetitionPattern =
  { frequency : Periodicity
  , stopCondition : StopRepetition
  }

let RevisionType =
  < Cancelled
  | UpdatedTimestamp : Timestamp
  >

let EventRevision =
  { initialTimestamp : Timestamp
  , revision : RevisionType
  }

let Duration =
  < Mins : Natural
  | Hours : Natural
  | Days : Natural
  >

let Url = Text -- this will be validated at runtime

let EventType =
  < BusinessEvent
  | ChildrensEvent
  | ComedyEvent
  | ConferenceEvent
  | CulturalEvent
  | EducationEvent
  | ExhibitionEvent
  | FairEvent
  | FashionEvent
  | FestivalEvent
  | FoodEvent
  | LiteraryEvent
  | MusicEvent
  | PublicationEvent
  | ReligiousEvent
  | SalesEvent
  | ScreeningEvent
  | SocialEvent
  | SportsEvent
  | TheatreEvent
  | VisualArtsEvent
  >

let Event =
  { name : Text
  , id : Text
  , place : Place
  , timestamp : Timestamp
  , duration : Duration
  , repetition : Optional RepetitionPattern
  , eventType : Optional EventType
  , content : Content
  , revisions : List EventRevision
  , signupUrl : Optional Url
  , image : Optional Prelude.Location.Type
  }

let TZLabel =
  < Europe/London
  >

let Community =
  { name : Text
  , id : Text
  , centre : GPSPosition
  , image : Optional Prelude.Location.Type
  , content : Content
  }

let MultiPolygon =
  < Explicit : List (List GPSPosition)
  | WKT : Text
  >

let Area =
  { name : Text
  , id : Text
  , boundaries : MultiPolygon
  , events : List Event
  , venues : List Venue
  , tzLabel : TZLabel
  , communities : List Community
  }

in 
  { Latitude = Latitude
  , Longitude = Longitude
  , GPSPosition = GPSPosition
  , Address = Address
  , Venue = Venue
  , Place = Place
  , Timestamp = Timestamp
  , DayOfWeek = DayOfWeek
  , Duration = Duration
  , Url = Url
  , StopRepetition = StopRepetition
  , WeeklyPeriodicity = WeeklyPeriodicity
  , MonthlyPeriodicity = MonthlyPeriodicity
  , Periodicity = Periodicity
  , Community = Community
  , MultiPolygon = MultiPolygon
  , RepetitionPattern = RepetitionPattern
  , Content = Content
  , EventRevision = EventRevision
  , EventType = EventType
  , Event = Event
  , TZLabel = TZLabel
  , Area = Area
  }