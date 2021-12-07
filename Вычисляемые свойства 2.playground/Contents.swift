import UIKit


        // Вычисляемые свойства //
        // Computed properties //


class Rectangular {
    
    let height: Int // высота
    let width: Int // ширина
    let depth: Int // глубина
    
    // Вычисляемое свойство = переменная (var)
    var volume: Int {
        return height * width * depth
    }
    
    init(height: Int, width: Int, depth: Int) {
        self.height = height
        self.width = width
        self.depth = depth
    }
}

let rectOne = Rectangular(height: 10, width: 12, depth: 16)
rectOne.volume // Объем


///-----------------------------------------------


class Person {
    
    var name: String
    var surname: String
    
    // get && set
    var fullName: String {
        
        get { return name + " " + surname }
        
        set(anotherNewValue) {
            let array = anotherNewValue.components(separatedBy: " ")
            name = array[0]
            surname = array[1]
        }
    }
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}

let personOne = Person(name: "Viktoria", surname: "Shekhovtsova")
personOne.fullName

personOne.name
personOne.surname

personOne.fullName = "Tomas Munz"
personOne.name
personOne.surname
