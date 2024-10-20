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

let StopRepitition =
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

let WeeklyPeridiocity =
  { n : Natural
  , daysOfTheWeek : List DayOfWeek 
  }

let MonthlyPeridiocity =
  < OnDays : { nMonthly : Natural, daysOfTheMonth : List Natural }
  | OnFirst : { nMonthly : Natural, occurrence : Natural, daysOfTheWeek: List DayOfWeek }
  | OnLast : { nMonthly : Natural, occurrence: Natural, daysOfTheWeek: List DayOfWeek }
  >

let Periodicity =
  < Daily : Natural
  | Weekly : WeeklyPeridiocity
  | MonthlyOn : MonthlyPeridiocity 
  | Fixed : List Timestamp
  >

let RepetitionPattern =
  { frequency : Periodicity
  , stopCondition : StopRepitition
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

let Event =
  { name : Text
  , id : Text
  , place : Place
  , timestamp : Timestamp
  , duration : Duration
  , repetition : Optional RepetitionPattern
  , tags : List Text
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
  , StopRepitition = StopRepitition
  , WeeklyPeridiocity = WeeklyPeridiocity
  , MonthlyPeridiocity = MonthlyPeridiocity
  , Periodicity = Periodicity
  , Community = Community
  , MultiPolygon = MultiPolygon
  , RepetitionPattern = RepetitionPattern
  , Content = Content
  , EventRevision = EventRevision
  , Event = Event
  , TZLabel = TZLabel
  , Area = Area
  }