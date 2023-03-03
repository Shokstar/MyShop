import UIKit

var greeting = "Hello, playground"

//Streets for Ghettopoly
struct Streets {
    //Streets ID for the List
    var id = UUID()
    
    //Is Street sold?
    var isStreetSold : Bool = false
    
    //Name of the Street
    var streetsName : String
    
    //Price
    var priceForTheStreet : Int
    
    //Switch will activate the Grouprent, if all Streets of one color are complete
    var streetGroupComplete : Bool = false
    var streetColor : UIColor
    
    //Normal Rent if the Streets Color are not complete
    var rent : Int
    
    //Switch turns true if the Street was bought by a Player
    var isRentActive : Bool = false
    
    //GroupRent amount
    var groupRent : Int
    
    //Switch, you get GroupRent if it turns True
    var isGroupRentActive : Bool = false
    
    //Rent's from 1-4 Houses on a Street
    var rentWith1House : Int
    var rentWith2Houses : Int
    var rentWith3Houses : Int
    var rentWith4Houses : Int
    
    //Switch turns true when an option is met.
    var isrentWith1HouseActive : Bool = false
    var isrentWith2HousesActive : Bool = false
    var isRentWith3HousesActive : Bool = false
    var isRentWith4HousesActive : Bool = false
    
    //Rent's from 1-4 Hotels on a Street
    var rentWith1Hotel : Int
    var rentWith2Hotels : Int
    var rentWith3Hotels : Int
    var rentWith4Hotels : Int
    
    //Switch turns true when an option is met.
    var isRentWith1HotelActive : Bool = false
    var isRentWith2HotelsActive : Bool = false
    var isRentWith3HotelsActive : Bool = false
    var isRentWith4HotelsActive : Bool = false
    
    //The Amount for 1 House
    var houseCost : Int
    //The Amount for 1 Hotel
    var hotelCost : Int
    
    //The Amount for the Mortage
    var mortgage : Int
    //The Buy-Out of the Mortage
    var mortgageDissolve : Int
    
    //Switch turns true when the player takes the Mortage Option
    var isMortgageActive : Bool = false
    //Switch turns false if the Player hasnt't paid back the Mortage to the Bank
    var isMortgageDissolveActive : Bool = true
    
}

//Street Color Brown
let brownColor = UIColor(red: 0x99/255, green: 0x66/255, blue: 0x33/255, alpha: 1.0)

//Street Color Brown ----------Badstrasse-------------
var badStrsse = Streets(streetsName: "Badstrasse", priceForTheStreet: 60, streetColor: brownColor, rent: 2, groupRent: 4, rentWith1House: 10, rentWith2Houses: 30, rentWith3Houses: 90, rentWith4Houses: 160, rentWith1Hotel: 450, rentWith2Hotels: (450 * 2), rentWith3Hotels: (450 * 3), rentWith4Hotels: (450 * 4), houseCost: 50, hotelCost: 50, mortgage: 30, mortgageDissolve: 33)

//Street Color Brown ----------Turmstrasse-------------
var turmStrasse = Streets(streetsName: "Turmstrasse", priceForTheStreet: 60, streetColor: brownColor, rent: 4, groupRent: 8, rentWith1House: 20, rentWith2Houses: 60, rentWith3Houses: 180, rentWith4Houses: 320, rentWith1Hotel: 450, rentWith2Hotels: (450 * 2), rentWith3Hotels: (450 * 3), rentWith4Hotels: (450 * 4), houseCost: 50, hotelCost: 50, mortgage: 30, mortgageDissolve: 33)


//StreetColor Lightblue
let lightBlue = UIColor(red: 135/255.0, green: 206/255.0, blue: 235/255.0, alpha: 1.0)

//Street Color Lightblue ----------Chausseestrasse-------------
var chausseeStrasse = Streets(streetsName: "Chausseestrasse", priceForTheStreet: 100, streetColor: lightBlue, rent: 6, groupRent: 12, rentWith1House: 30, rentWith2Houses: 90, rentWith3Houses: 270, rentWith4Houses: 400, rentWith1Hotel: 550, rentWith2Hotels: (550 * 2), rentWith3Hotels: (550 * 3), rentWith4Hotels: (550 * 4), houseCost: 50, hotelCost: 50, mortgage: 50, mortgageDissolve: 55)

//Street Color Lightblue ----------Elisenstrasse-------------
var elisenStrasse = Streets(streetsName: "Elisenstrasse", priceForTheStreet: 100, streetColor: lightBlue, rent: 6, groupRent: 12, rentWith1House: 30, rentWith2Houses: 90, rentWith3Houses: 270, rentWith4Houses: 400, rentWith1Hotel: 550, rentWith2Hotels: (550 * 2), rentWith3Hotels: (550 * 3), rentWith4Hotels: (550 * 4), houseCost: 50, hotelCost: 50, mortgage: 50, mortgageDissolve: 55)

//Street Color Lightblue ----------Poststrasse-------------
var postStrasse = Streets(streetsName: "Poststrasse", priceForTheStreet: 120, streetColor: lightBlue, rent: 6, groupRent: 16, rentWith1House: 40, rentWith2Houses: 100, rentWith3Houses: 300, rentWith4Houses: 450, rentWith1Hotel: 600, rentWith2Hotels: (600 * 2), rentWith3Hotels: (600 * 3), rentWith4Hotels: (600 * 4), houseCost: 50, hotelCost: 50, mortgage: 60, mortgageDissolve: 66)

//StreetColor Magenta
let magenta = UIColor(red: 255/255.0, green: 0/255.0, blue: 255/255.0, alpha: 1.0)

//Street Color Magenta ----------Seestrasse-------------
var seeStrasse = Streets(streetsName: "Seestrasse", priceForTheStreet: 140, streetColor: magenta, rent: 10, groupRent: 20, rentWith1House: 50, rentWith2Houses: 150, rentWith3Houses: 450, rentWith4Houses: 625, rentWith1Hotel: 750, rentWith2Hotels: (750 * 2), rentWith3Hotels: (750 * 3), rentWith4Hotels: (750 * 4), houseCost: 100, hotelCost: 100, mortgage: 70, mortgageDissolve: 77)

//Street Color Magenta ----------Hafenstrasse-------------
var hafenStrasse = Streets(streetsName: "Hafenstrasse", priceForTheStreet: 140, streetColor: magenta, rent: 10, groupRent: 20, rentWith1House: 50, rentWith2Houses: 150, rentWith3Houses: 450, rentWith4Houses: 625, rentWith1Hotel: 750, rentWith2Hotels: (750 * 2), rentWith3Hotels: (750 * 3), rentWith4Hotels: (750 * 4), houseCost: 100, hotelCost: 100, mortgage: 70, mortgageDissolve: 77)

//Street Color Magenta ----------Neuestrasse-------------
var neueStrasse = Streets(streetsName: "Neuestrasse", priceForTheStreet: 160, streetColor: magenta, rent: 12, groupRent: 24, rentWith1House: 60, rentWith2Houses: 180, rentWith3Houses: 500, rentWith4Houses: 700, rentWith1Hotel: 900, rentWith2Hotels: (900 * 2), rentWith3Hotels: (900 * 3), rentWith4Hotels: (900 * 4), houseCost: 100, hotelCost: 100, mortgage: 80, mortgageDissolve: 88)

//StreetColor Orange
let orange = UIColor(red: 255/255.0, green: 165/255.0, blue: 0/255.0, alpha: 1.0)

//Street Color Orange ----------Münchener Strasse-------------
var muenchenerStrasse = Streets(streetsName: "Münchener Strasse", priceForTheStreet: 180, streetColor: orange, rent: 14, groupRent: 28, rentWith1House: 70, rentWith2Houses: 200, rentWith3Houses: 550, rentWith4Houses: 750, rentWith1Hotel: 950, rentWith2Hotels: (950 * 2), rentWith3Hotels: (950 * 3), rentWith4Hotels: (950 * 4), houseCost: 100, hotelCost: 100, mortgage: 90, mortgageDissolve: 99)

//Street Color Orange ----------Wiener Strasse-------------
var wienerStrasse = Streets(streetsName: "Wiener Strasse", priceForTheStreet: 140, streetColor: orange, rent: 14, groupRent: 28, rentWith1House: 70, rentWith2Houses: 200, rentWith3Houses: 550, rentWith4Houses: 750, rentWith1Hotel: 950, rentWith2Hotels: (950 * 2), rentWith3Hotels: (950 * 3), rentWith4Hotels: (950 * 4), houseCost: 100, hotelCost: 100, mortgage: 90, mortgageDissolve: 99)

//Street Color Orange ----------Berliner Strasse-------------
var berlinerStrasse = Streets(streetsName: "Berliner Strasse", priceForTheStreet: 160, streetColor: orange, rent: 16, groupRent: 32, rentWith1House: 80, rentWith2Houses: 220, rentWith3Houses: 600, rentWith4Houses: 800, rentWith1Hotel: 1000, rentWith2Hotels: (1000 * 2), rentWith3Hotels: (1000 * 3), rentWith4Hotels: (1000 * 4), houseCost: 100, hotelCost: 100, mortgage: 100, mortgageDissolve: 110)

//Street Color Red
let red = UIColor(red: 255/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)

//Street Color Red ----------Theaterstrasse-------------
var theaterStrasse = Streets(streetsName: "Theaterstrasse", priceForTheStreet: 220, streetColor: red, rent: 18, groupRent: 36, rentWith1House: 90, rentWith2Houses: 250, rentWith3Houses: 700, rentWith4Houses: 875, rentWith1Hotel: 1050, rentWith2Hotels: (1050 * 2), rentWith3Hotels: (1050 * 3), rentWith4Hotels: (1050 * 4), houseCost: 150, hotelCost: 150, mortgage: 110, mortgageDissolve: 121)

//Street Color Red ----------Museumstrasse-------------
var museumStrasse = Streets(streetsName: "Museumstrasse", priceForTheStreet: 220, streetColor: red, rent: 18, groupRent: 36, rentWith1House: 90, rentWith2Houses: 250, rentWith3Houses: 700, rentWith4Houses: 875, rentWith1Hotel: 1050, rentWith2Hotels: (1050 * 2), rentWith3Hotels: (1050 * 3), rentWith4Hotels: (1050 * 4), houseCost: 150, hotelCost: 150, mortgage: 110, mortgageDissolve: 121)

//Street Color Red ----------Opernplatz-------------
var opernplatz = Streets(streetsName: "Opernplatz", priceForTheStreet: 240, streetColor: red, rent: 20, groupRent: 40, rentWith1House: 100, rentWith2Houses: 300, rentWith3Houses: 750, rentWith4Houses: 925, rentWith1Hotel: 1100, rentWith2Hotels: (1100 * 2), rentWith3Hotels: (1100 * 3), rentWith4Hotels: (1100 * 4), houseCost: 150, hotelCost: 150, mortgage: 120, mortgageDissolve: 132)

//Street Color Yellow
let yellow = UIColor(red: 255/255.0, green: 255/255.0, blue: 0/255.0, alpha: 1.0)

//Street Color Yellow ----------Lessingstrasse-------------
var lessingStrasse = Streets(streetsName: "Lessingstrasse", priceForTheStreet: 260, streetColor: yellow, rent: 22, groupRent: 44, rentWith1House: 110, rentWith2Houses: 330, rentWith3Houses: 800, rentWith4Houses: 975, rentWith1Hotel: 1150, rentWith2Hotels: (1150 * 2), rentWith3Hotels: (1150 * 3), rentWith4Hotels: (1150 * 4), houseCost: 150, hotelCost: 150, mortgage: 130, mortgageDissolve: 143)

//Street Color Yellow ----------Schillerstrasse-------------
var schillerStrasse = Streets(streetsName: "Schillerstrasse", priceForTheStreet: 260, streetColor: yellow, rent: 22, groupRent: 44, rentWith1House: 110, rentWith2Houses: 330, rentWith3Houses: 800, rentWith4Houses: 975, rentWith1Hotel: 1150, rentWith2Hotels: (1150 * 2), rentWith3Hotels: (1150 * 3), rentWith4Hotels: (1150 * 4), houseCost: 150, hotelCost: 150, mortgage: 130, mortgageDissolve: 143)

//Street Color Yellow ----------Goethestrasse-------------
var goehteStrasse = Streets(streetsName: "Goethestrasse", priceForTheStreet: 280, streetColor: yellow, rent: 24, groupRent: 48, rentWith1House: 120, rentWith2Houses: 360, rentWith3Houses: 850, rentWith4Houses: 1025, rentWith1Hotel: 1200, rentWith2Hotels: (1200 * 2), rentWith3Hotels: (1200 * 3), rentWith4Hotels: (1200 * 4), houseCost: 150, hotelCost: 150, mortgage: 140, mortgageDissolve: 154)

//Street Color Green
let green = UIColor(red: 0/255.0, green: 255/255.0, blue: 0/255.0, alpha: 1.0)

//Street Color Green ----------Rathausplatz-------------
var rathausplatz = Streets(streetsName: "Rathausplatz", priceForTheStreet: 300, streetColor: green, rent: 26, groupRent: 52, rentWith1House: 130, rentWith2Houses: 390, rentWith3Houses: 900, rentWith4Houses: 1100, rentWith1Hotel: 1275, rentWith2Hotels: (1275 * 2), rentWith3Hotels: (1275 * 3), rentWith4Hotels: (1275 * 4), houseCost: 200, hotelCost: 200, mortgage: 150, mortgageDissolve: 165)

//Street Color Green ----------Hauptstrasse-------------
var hauptStrasse = Streets(streetsName: "Hauptstrasse", priceForTheStreet: 300, streetColor: green, rent: 26, groupRent: 52, rentWith1House: 130, rentWith2Houses: 390, rentWith3Houses: 900, rentWith4Houses: 1100, rentWith1Hotel: 1275, rentWith2Hotels: (1275 * 2), rentWith3Hotels: (1275 * 3), rentWith4Hotels: (1275 * 4), houseCost: 200, hotelCost: 200, mortgage: 150, mortgageDissolve: 165)

//Street Color Green ----------Bahnhofstrasse-------------
var bahnhofStrasse = Streets(streetsName: "Bahnhofstrasse", priceForTheStreet: 320, streetColor: green, rent: 28, groupRent: 56, rentWith1House: 150, rentWith2Houses: 450, rentWith3Houses: 1000, rentWith4Houses: 1200, rentWith1Hotel: 1400, rentWith2Hotels: (1400 * 2), rentWith3Hotels: (1400 * 3), rentWith4Hotels: (1400 * 4), houseCost: 200, hotelCost: 200, mortgage: 150, mortgageDissolve: 176)

//Street Color RoyalBlue
let royalBlue = UIColor(red: 65/255.0, green: 105/255.0, blue: 225/255.0, alpha: 1.0)

//Street Color RoyalBlue ----------Parkstrasse-------------
var parkStrasse = Streets(streetsName: "Parkstrasse", priceForTheStreet: 350, streetColor: royalBlue, rent: 35, groupRent: 70, rentWith1House: 175, rentWith2Houses: 500, rentWith3Houses: 1100, rentWith4Houses: 1300, rentWith1Hotel: 1500, rentWith2Hotels: (1500 * 2), rentWith3Hotels: (1500 * 3), rentWith4Hotels: (1500 * 4), houseCost: 200, hotelCost: 200, mortgage: 175, mortgageDissolve: 193)

//Street Color RoyalBlue ----------Schlossallee-------------
var schlossAllee = Streets(streetsName: "Schlossallee", priceForTheStreet: 400, streetColor: royalBlue, rent: 50, groupRent: 100, rentWith1House: 200, rentWith2Houses: 600, rentWith3Houses: 1400, rentWith4Houses: 1700, rentWith1Hotel: 2000, rentWith2Hotels: (2000 * 2), rentWith3Hotels: (2000 * 3), rentWith4Hotels: (2000 * 4), houseCost: 200, hotelCost: 200, mortgage: 200, mortgageDissolve: 220)

//------------------------Bahnhöfe------------------------------

struct TrainStations{
    
    //Trainstations ID for the List maybe I need an extra Struct for it!!!!
    var id = UUID()
    //Trainstations Name
    var trainstationsName : String
    
    //Is TrainStation sold?
    var isTrainStationSold : Bool = false
    
    //Price
    var priceForTheTS : Int
    
    //Rent for the Trainstations
    var rentWith1TS : Int
    var rentWith2TS : Int
    var rentWith3TS : Int
    var rentWith4TS : Int
    
    //Switch turns true when an option is met.
    var isRentWith1TSActive : Bool = false
    var isRentWith2TSActive : Bool = false
    var isRentWith3TSActive : Bool = false
    var isRentWith4TSActive : Bool = false
    
    //The Amount for the Mortage
    var mortgage : Int
    //The Buy-Out of the Mortage
    var mortgageDissolve : Int
    
    //Switch turns true when the player takes the Mortage Option
    var isMortgageActive : Bool = false
    //Switch turns false if the Player hasnt't paid back the Mortage to the Bank
    var isMortgageDissolveActive : Bool = true
    
}

//TrainStation ----------Nordbahnhof-------------
var nordBahnhof = TrainStations(trainstationsName: "Nordbanhof", priceForTheTS: 200, rentWith1TS: 25, rentWith2TS: 50, rentWith3TS: 100, rentWith4TS: 200, mortgage: 100, mortgageDissolve: 100)

//TrainStation ----------Westbahnhof-------------
var westBahnhof = TrainStations(trainstationsName: "Westbahnhof", priceForTheTS: 200, rentWith1TS: 25, rentWith2TS: 50, rentWith3TS: 100, rentWith4TS: 200, mortgage: 100, mortgageDissolve: 100)

//TrainStation ----------Südbahnhof-------------
var suedBahnhof = TrainStations(trainstationsName: "Südbahnhof", priceForTheTS: 200, rentWith1TS: 25, rentWith2TS: 50, rentWith3TS: 100, rentWith4TS: 200, mortgage: 100, mortgageDissolve: 100)

//TrainStation ----------Hauptbahnhof-------------
var hauptBahnhof = TrainStations(trainstationsName: "Hauptbahnhof", priceForTheTS: 200, rentWith1TS: 25, rentWith2TS: 50, rentWith3TS: 100, rentWith4TS: 200, mortgage: 100, mortgageDissolve: 100)


//------------------------E & W-werke------------------------------

struct CareStations{
    
    //Trainstations ID for the List maybe I need an extra Struct for it!!!!
    var id = UUID()
    //Trainstations Name
    var CareStationsName : String
    
    //Is TrainStation sold?
    var isCareStationSold : Bool = false
    
    //Price
    var priceForTheCareStation : Int
    
    //Rent for the Trainstations
    var rentWith1CareStation : Int
    var rentWith2CareStation : Int
    
    //Switch turns true when an option is met.
    var isRentWith1CareStationActive : Bool = false
    var isRentWith2CareStationsActive : Bool = false
    
    //The Amount for the Mortage
    var mortgage : Int
    //The Buy-Out of the Mortage
    var mortgageDissolve : Int
    
    //Switch turns true when the player takes the Mortage Option
    var isMortgageActive : Bool = false
    //Switch turns false if the Player hasnt't paid back the Mortage to the Bank
    var isMortgageDissolveActive : Bool = true
    
}

//--------------------------Dice------------------------------------
//This Function is a PlaceHolder just for the CareStations rent.
func dice()-> Int{
    let dice1 = Int.random(in: 1...6)
    let dice2 = Int.random(in: 1...6)
    return dice1 + dice2
}
//------------------------------------------------------------------

//CareStation ----------Elektrizitätswerk-------------
var elektrizitaetsWerk = CareStations(CareStationsName: "Elektrizitätswerk", priceForTheCareStation: 150, rentWith1CareStation: (dice()*4), rentWith2CareStation: (dice()*10), mortgage: 75, mortgageDissolve: 83)

//CareStation ----------Wasserwerk-------------
var wasserWerk = CareStations(CareStationsName: "Wasserwerk", priceForTheCareStation: 150, rentWith1CareStation: (dice()*4), rentWith2CareStation: (dice()*10), mortgage: 75, mortgageDissolve: 83)

//--------------------------Players properties--------------------------
struct Player{
    //Players ID
    var playerID = UUID()
    
    //Players Name
    var playersName : String
    
    //Players seed Capital & Switch Bank Account Status
    var playersMoney : Int
    var isBankAccountPositiv : Bool = true
    
    //Switch is switiching at beginning and at end of turn
    var isItPlayersTurn : Bool = false
    
    //An empty List of all Streets collected by the Player during the Game
    var playersStreets: [Streets] = []
    
    //An empty List of all TrainStations collected by the Player during the Game
    var playersTrainStations: [TrainStations] = []
    
    //An empty List of all CareStations collected by the Player during the Game
    var playersCareStation: [CareStations] = []
    
    //Switch  turns true if Player goes into Jail
    var isPlayerInJail : Bool = false
    
    //FreeParking Player doesn't have to pay rent for one Round
    var isFreeParkingActive : Bool = false
    
    //Switch Players Round is active or over
    var isPlayersRoundOver : Bool = false
    
}

//--------------------------Banks properties--------------------------
struct TheBank {
    //The whole Money of the Bank, all Players capital at the beginning will reduce the Banks Money
    var banksMoney : Int = 20580
    
    //List of all Streets for selling
    var streetsForSelling: [Streets] = [badStrsse,turmStrasse,chausseeStrasse,elisenStrasse,postStrasse,seeStrasse,hafenStrasse,neueStrasse,muenchenerStrasse,wienerStrasse,berlinerStrasse,theaterStrasse,museumStrasse,opernplatz,lessingStrasse,schillerStrasse,goehteStrasse,rathausplatz,hauptStrasse,bahnhofStrasse,parkStrasse,schlossAllee]
    
    //Switch turns true if the List is empty
    var isStreetListEmpty : Bool = false
    
    //------------------------------------------------------------
    
    //List of all Streets for selling
    var careStationsForSelling : [CareStations] = [elektrizitaetsWerk,wasserWerk]
    
    //Switch turns true if the List is empty
    var isCareStationsListEmpty : Bool = false
    
    //------------------------------------------------------------
    
    //List of all TrainStations for selling
    var trainStationsForSelling : [TrainStations] = [nordBahnhof,westBahnhof,suedBahnhof,hauptBahnhof]
    
    //Switch turns true if the List is empty
    var isTrainStationsListEmpty : Bool = false
    
    //------------------------------------------------------------
    
}

//--------------------------EXAMPLE----------------------------


var theBank = TheBank()

var player1 = Player(playersName: "Player 1", playersMoney: 5000)
var player2 = Player(playersName: "Player 2", playersMoney: 1500)

struct CommunityCards {
    
    //CommunityCards ID
    var cardID : Int
    
    //Switch turns true if the stack is empty
    var isCardStapleEmpty : Bool = false
    
}

//----------------------------Community Cards--------------------------------

func communityCard_1(player : inout Player) {
    print("Bank-Irrtum zu deinem gunsten. Ziehe 200€ ein.")
    player.playersMoney += 200
}

func communityCard_2(player : inout Player) {
    print("Deine lebensversicherung wir fällig. Du erhälst 100€.")
    player.playersMoney += 100
}

func communityCard_3(player : inout Player) {
    print("Einkommensteuerrückzahlung. Du erhälst 20€.")
    player.playersMoney += 20
}

func communityCard_4(player : inout Player) {
    print("Arztkosten. Zahle 50€.")
    player.playersMoney -= 50
}

func communityCard_5(player : inout Player) {
    print("Du erbst 100€.")
    player.playersMoney += 100
}

func communityCard_6(player : inout Player) {
    print("Zahle Schulgeld: 50€.")
    player.playersMoney += 50
}

func communityCard_7(player : inout Player) {
    print("Aus Lagerverkäufen erhälst Du 50€.")
    player.playersMoney += 50
}

func communityCard_8(player : inout Player) {
    print("Du erhälst eine Beratungsgebühr von 25€.")
    player.playersMoney += 25
}

func communityCard_9(player : inout Player) {
    print("Du hast Geburtstag. Jeder Spieler schenkt dir 10€.")
    //Platzhalter add gamers to the function later to do the transaction
    player.playersMoney += 10
}

func communityCard_10(player : inout Player) {
    print("Zweiter Preis im Schönheitswettbewerb. Du erhälst 10€.")
    //Platzhalter add gamers to the function later to do the transaction
    player.playersMoney += 10
}

func communityCard_11(player : inout Player) {
    print("Krankenhausgebühren. Du zahlst 100€.")
    //Platzhalter add gamers to the function later to do the transaction
    player.playersMoney -= 100
}

func communityCard_12(player : inout Player) {
    print("Urlaubsgeld! Du erhälst 100€.")
    //Platzhalter add gamers to the function later to do the transaction
    player.playersMoney += 100
}

func communityCard_13(player : inout Player) {
    print("Du hast Geburtstag. Jeder Spieler schenkt dir 10€.")
    //Platzhalter add gamers to the function later to do the transaction
    player.playersMoney += 50
}

func communityCard_14(player : inout Player) {
    print("Bankirrtum zu deinem gunsten. Ziehe 200€ ein")
    //Platzhalter add gamers to the function later to do the transaction
    player.playersMoney += 200
}




