import UIKit
//Exercise DataTypes
print("------------DataTypes-------------")
let name: String = "Max"
let prename : String = "Mustermann"
var age: Int = 42
let height:Double = 1.75

print(age)
//one Year older
age += 1
print("One Year older: \(age)")
//print all Datatypes
print("Name: \(name) Nachname: \(prename), Alter: \(age) Größe: \(height)")

//Exercise if-else
print("------------if/else-------------")
var isLightOn :Bool = true
if isLightOn{
    print("Mir hat alle Lampen an!!!")
}else{
    print("Mir hat alle Lampen aus!!!")
}

print("------------Holiday Getter/Setter-------------")

var amountOfHolidays : Int = 30
var takenHolidays : Int = 5

var amountOfHolidaysLeft : Int {
    set (amount){ takenHolidays = amount }
    get { return amountOfHolidays - takenHolidays }
}
takenHolidays = 10
print("Genommener Urlaug: \(takenHolidays)")
print()
print("Dein Resturlaub beträgt: \(amountOfHolidaysLeft) ")

print("holidays left \(amountOfHolidays)")
print("------------Arrays-------------")

var abc = ["a","b","c","d","e","f","g","h","i","j","k","l"]
var def = ["m","n","o","p","r","s","t","u","v","w","x","y","z"]
print(abc[5])
abc[5] = "99"
print("----hinzugefügtes Objekt an Position: 5 = 99 -----",abc)
abc.remove(at: 5)
print("----entfernt das Objekt an Position: 5 = -99 -----",abc)
abc.removeFirst()
print("----erster Buchstabe entfernt-----",abc)
abc.removeLast()
print("----letzter Buchstabe entfernt-----",abc)
abc[0] = "a"
abc.append("l")
print("----a und l hinzugefügt an erster und letzter Stelle-----",abc)
abc.shuffle()
print("----shuffle-----",abc)
abc.sort()
print("----sortiert-----",abc)
abc.append(contentsOf: def)
print("----def rest des abc's hinzugefügt am Ende-----",abc)
