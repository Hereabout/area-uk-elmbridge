let Prelude = https://prelude.dhall-lang.org/v20.0.0/package.dhall
let Schema = ./types.dhall

let every = \(n : Natural) ->
  { days = Schema.Periodicity.Daily n
  , weeks =
    { on = \(days : List Schema.DayOfWeek) ->
      Schema.Periodicity.Weekly (
        { n = n
        , daysOfTheWeek = days
        }
      )
    }
  , months = 
    { onCalendarDays = \(days : List Natural) ->
      Schema.Periodicity.MonthlyOn (
        Schema.MonthlyPeriodicity.OnDays 
          { nMonthly = n
          , daysOfTheMonth = days
          }  
      )
    , on =
      { first =
        { week = 
          { on = \(days : List Schema.DayOfWeek) ->
            Schema.Periodicity.MonthlyOn (
              Schema.MonthlyPeriodicity.OnFirst 
                { nMonthly = n
                , occurrence = 1
                , daysOfTheWeek = days 
                }
            )

          }
        }
      , second =
        { week = 
          { on = \(days : List Schema.DayOfWeek) ->
            Schema.Periodicity.MonthlyOn (
              Schema.MonthlyPeriodicity.OnFirst 
                { nMonthly = n
                , occurrence = 2
                , daysOfTheWeek = days 
                }
            )

          }
        }
      , third =
        { week = 
          { on = \(days : List Schema.DayOfWeek) ->
            Schema.Periodicity.MonthlyOn (
              Schema.MonthlyPeriodicity.OnFirst 
                { nMonthly = n
                , occurrence = 3
                , daysOfTheWeek = days 
                }
            )

          }
        }
      , fourth =
        { week = 
          { on = \(days : List Schema.DayOfWeek) ->
            Schema.Periodicity.MonthlyOn (
              Schema.MonthlyPeriodicity.OnFirst 
                { nMonthly = n
                , occurrence = 4
                , daysOfTheWeek = days 
                }
            )

          }
        }
      , secondToLast =
        { week = 
          { on = \(days : List Schema.DayOfWeek) ->
            Schema.Periodicity.MonthlyOn (
              Schema.MonthlyPeriodicity.OnLast 
                { nMonthly = n
                , occurrence = 2
                , daysOfTheWeek = days 
                }
            )

          }
        }
      , last =
        { week = 
          { on = \(days : List Schema.DayOfWeek) ->
            Schema.Periodicity.MonthlyOn (
              Schema.MonthlyPeriodicity.OnLast 
                { nMonthly = n
                , occurrence = 1
                , daysOfTheWeek = days 
                }
            )
          }
        }
      }
    }
  }

in 
  { every = every
  , stuff = (every 3).months.onCalendarDays [1, 2, 3] : Schema.Periodicity
  , stuff2 = (every 2).months.on.first.week.on [Schema.DayOfWeek.Monday, Schema.DayOfWeek.Tuesday] : Schema.Periodicity
  , stuff3 = (every 3).days : Schema.Periodicity
  , stuff4 = (every 2).weeks.on [Schema.DayOfWeek.Friday, Schema.DayOfWeek.Saturday]
  }