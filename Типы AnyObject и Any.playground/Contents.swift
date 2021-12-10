import UIKit

            // Типы AnyObject и Any //


class A {
}

class B {
}

let a = A() // Экземпляр класса А
let b = B() // Экземпляр класса B


struct C {
}

let c = C() // Экземпляр структуры С

enum D {
    case a
    case b
}

let d = D.a



// AnyObject - экземпляр абсолютного любого класса
let array: [AnyObject] = [a, b]
//let array: [AnyObject] = [a, b, c, d] // Ошибка - AnyObject только класс !

// Any -> любой
let arrayTwo: [Any] = [a, b, c, d]
let arrayThree: [Any] = [a, b, c, d, true, "Hello", 0.64, 5 + 4]

for i in arrayThree {
    switch i {
        case let item as Int:
            print("this is Int : \(item)")
        case let item as String:
            print("this is String : \(item)")
        default:
            print("other type")
    }
}
