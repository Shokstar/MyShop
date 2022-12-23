import UIKit




enum Wochentage : CaseIterable {
    case montag,dienstag,mittwoch,donnerstag,freitag,samstag,sonntag
}


var randomWochentage : Wochentage = .allCases.randomElement()!


switch randomWochentage{
case .montag :print("Montag")
    print("Montag2")
    print("Montag3")
case .dienstag : print("Dienstag")
case .mittwoch : print("Mittwoch")
case .donnerstag : print("Donnerstag")
case .freitag : print("Freitag")
case .samstag, .sonntag : print("Samstag || Sonntag")
    
default: print("Wochenende")
}

print("-------------------------- Kompass Aufgabe --------------------------")

//Introduce the Enum cases
enum Compass : CaseIterable{
    case north,south,east,west
}
//choose a random Element of all cases
var randomDirections : Compass = Compass.allCases.randomElement()!
//shows different cases
switch randomDirections{
case .north :print("Norden")
case .south :print("Süden")
case .east :print("Osten")
case .west :print("Westen")
}


print("-------------------------- Wetter --------------------------")
//Introduce the Enum cases
enum Weather : CaseIterable{
    case sun,rain,storm,snow
}

//choose a random Element of all cases
var randomWeather : Weather = Weather.allCases.randomElement()!
//shows different cases
switch randomWeather{
case .sun :print("sonnig")
case .rain :print("regnet")
case .storm :print("stürmisch")
case .snow :print("schneit")
}

print("-------------------------- Orakel --------------------------")

let posAnswer = ["Sehr gut!", "Das hast Du super gemacht!!", "Mach weiter so!!!", "Perfekt!", "Besser geht es nicht!", "Sehr gut Champ!", "Du hast es gerockt!!!", "Geil gemacht Dude!"]
let neuAnswers = ["Nicht schlecht!", "Kann man machen...", "ist okay.", "Gute Idee", "Befriedigend"]
let negAnswers = ["War das schon alles?", "Da geht noch mehr!!!", "Niemals!", "Dat war Kaka!!!!", "Toillette!", "Ente, das wird nie was!"]
//Introduce the Enum cases
enum Oracle : CaseIterable{
    case postiv, neutral , negative
    
}

var theOraclesAnswers: Oracle = Oracle.allCases.randomElement()!
switch theOraclesAnswers{
case .postiv :  print(posAnswer.randomElement()!)
case .neutral : print(neuAnswers.randomElement()!)
case .negative : print(negAnswers.randomElement()!)
}



