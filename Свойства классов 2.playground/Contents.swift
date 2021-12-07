import UIKit

            // Свойства классов //
            // Class properties //

class Car {
    
    // properties - свойства
    let products: Int
    let people: Int
    let pets: Int
//    let selfWeight: Int = 1500 // вес автомобиля
//    let maxWeight: Int = 2000 // максимально перевозимый вес
    
    // Свойства класса (Синтаксис: Тип явно - Фигурные скобки - Вовзрат типа который объявлен)
    class var selfWeight: Int { return 1500 } // вес автомобиля
    class var maxWeight:  Int { return 2000 } // максимально перевозимый вес
    
    // computed property - вычисляемые свойства
    var totalWeight: Int {
        return products + people + pets + Car.selfWeight
    }

    // инициализатор
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }

}

let carOne = Car(products: 500, people: 320, pets: 40)
carOne.totalWeight

let maxWeight = Car.maxWeight
let carWeight = Car.selfWeight
let totalWeight = carOne.totalWeight

if maxWeight < totalWeight {
    print("U can't drive, because car is overloaded: -\(totalWeight - maxWeight)g :(")
} else {
    print("U can drive! :)")
}

///-----------------------------------------------
