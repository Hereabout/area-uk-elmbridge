let esherLibrary = ./esher-library/esher-library.dhall
let bearHotelEsher = ./the-bear-hotel-esher/bear-hotel.dhall
let esherTheatre = ./esher-theatre/esher-theatre.dhall
let theWheatsheafEsher = ./the-wheatsheaf-esher/the-wheatshear.dhall
let lowerGreenCommunityCentre = ./lower-green-community-centre/lower-green-community-centre.dhall

in 
  [ bearHotelEsher
  , esherLibrary
  , esherTheatre
  , lowerGreenCommunityCentre
  , theWheatsheafEsher
  ]
