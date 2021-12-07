import UIKit

//var str = "Hello, playground"
//print(str)

/*
let tuple = (22, "viks")

print(tuple)

print("Мой возраст - \(tuple.0)\n Мое имя - \(tuple.1)")
*/

/*
func makeIncrementer(forIncrement amount: Int) -> () -> Int
{
    var runningTotal = 1
    func incrementer() -> Int
    {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

var age = 5
var age1 = 20

var res = makeIncrementer(forIncrement: 5)

print (res)
*/

/*
func makeIncrementer(amount: Int) -> Int
{
    var runningTotal = 1
    return incrementer(runningTotal, amount)
}

func incrementer(runningTotal: Int, amount: Int) -> Int {
    runningTotal += amount
    return runningTotal
}

var one = 3
*/



/*
// Определяю перечисления
enum WeekDay
{
    case Monday 
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

var WhatTheDayOfWeek = WeekDay.Friday
print (WhatTheDayOfWeek)

func getJob (Day: WeekDay) -> String
{
    if (Day == WeekDay.Saturday || Day == WeekDay.Sunday) {
        return "Nothing" }
    else {
        return "Coding" }
}

func test()
{
    var Day = WeekDay.Monday
    print("Day = \(Day)")
    
    var job = getJob(Day)
    print("Job = \(job)")
}
*/

enum WeekDay: Int
{
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7
}

var WhatTheDayOfWeek = WeekDay.Friday
print (WhatTheDayOfWeek)

enum FavoriteSeason: Int
{
    case Winter = 1
    case Spring = 2
    case Summer = 3
    case Autumn = 4
}

//

var Vikos = FavoriteSeason.Spring.rawValue
print ("Value(raw) : \(Vikos)")


var DayIvan = FavoriteSeason.Spring
print ("Day : \(DayIvan)")

//let Day1 = FavoriteSeason(rawValue: 3)
//print (Day1)

//
/*
switch (Vikos) {
case 1:
    print("Snow")
    break
case 2:
    print("Rain")
    break
case 3:
    print("Sun")
    break
default:
    break
}
*/

print("---------")

enum FavoriteSeason2: CaseIterable
{
    case Winter, Spring, Summer, Autumn
}

// Можно получить коллекцию всех кейсов перечисления
// CaseIterable -
let numberOfSeason = FavoriteSeason2.allCases.count
print("\(numberOfSeason) - количество сезонов")

for season in FavoriteSeason2.allCases {
    print(" - \(season)")
}


print("---------")

var Vikos2 = FavoriteSeason2.Spring
print ("Value(raw) : \(Vikos2)")

switch (Vikos2)
// Vikos2 объявлена как FavoriteSeason2
{
case .Winter: // FavoriteSeason.Winter:
// сокращенный точечный синтаксис .Winter
    print("Snow")
    break
case .Spring: // FavoriteSeason.Spring:
    print("Rain")
    break
case .Summer: // FavoriteSeason.Summer:
    print("Sun")
    break
case .Autumn: // FavoriteSeason.Autumn:
    print("Leaf fall")
    break
}

enum Planet: Int
{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var MyPlanet = Planet.jupiter.rawValue
print(MyPlanet)

// Разделение компоненты строки
let line = "Aa b   Cc d e  Ff"
let lineItems = line.split(separator: " ", maxSplits: 3) // max разделение
print (lineItems)

let lineItemsOnlySplit = line.split(separator: " ") // max разделение
print (lineItemsOnlySplit)

let lineItemsComp = line.components(separatedBy: " ")
print (lineItemsComp)
