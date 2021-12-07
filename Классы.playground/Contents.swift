import UIKit

class FarmAnimal
{
    var name = "домашнее животное"
    var numberOfLegs = 4
    
    func sayHello() -> String
    {
        return "Привет,я домашнее животное!"
    }
    func description()
    {
        print("Я \(name),и у меня \(numberOfLegs) ног.")
    }
}

class Sheep: FarmAnimal
{
    override init()
    {
        super.init()
        name = "овца"
    }
    override func sayHello() -> String
    {
        return "Бе-е-е"
    }
    override func description()
    {
        super.description()
        print("Из моей шерсти делают одеяла.")
    }
}
 
class Chicken: FarmAnimal
{
    var numberOfEggs = 0
    override init()
    {
        super.init()
        name = "chicken"
        numberOfLegs = 2
    }
    override func sayHello() -> String
    {
        return "Кудах-тах-тах"
    }
    override func description()
    {
        super.description()
        print("Я откладываю яйца.")
        
        if numberOfEggs == 1
        {
            print("У меня есть для тебя одно яйцо.")
        }
        else if numberOfEggs > 0
        {
            print("У меня есть для тебя \(numberOfEggs) яиц.")
        }
    }
    
    func layAnEgg() {
        numberOfEggs += 1
    }
    func giveUpEggs() -> Int {
        let eggs = numberOfEggs
        numberOfEggs = 0
        return eggs
    }
}

//
let aSheep = Sheep()
//aSheep.sayHello()
//aSheep.description()

let chicken1 = Chicken()
//chicken1.layAnEgg()

let chicken2 = Chicken()
//chicken2.layAnEgg()

// is -> проверяем соответствие животного классу
///*
var animals = [chicken1, chicken2, Sheep(), Chicken(), Sheep()]

/*
for animal in animals
{
    if animal is Sheep
    {
        print("Вот что говорит моя овца: \(animal.sayHello())")
    }
    else if animal is Chicken
    {
        print("А вот и мои куры: \(animal.sayHello())")
        let chicken = animal as! Chicken // "!" ->  принудительно нисходящее преобразование
                                       // animal в класс Chicken
        chicken.layAnEgg()
        chicken.description()
    }
}
*/

// as -> нисходящее преобразование
// "!" -> принудительно, если уверены что обьект типа Chicken() относится к классу FarmAnimal()
// "?" -> если не уверены относится ли обьект типа Chicken() к классу FarmAnimal()

var GatheredEggs = 0

for animal in animals
{
    // Поиск относится ли данное животное к типу Chicken()
    if let chicken = animal as? Chicken
    {
        chicken.layAnEgg()
        print("Собираем \(chicken.numberOfEggs) яиц.")
        GatheredEggs += chicken.giveUpEggs()
    }
}
print("Сегодня я собрал \(GatheredEggs) яиц!")
