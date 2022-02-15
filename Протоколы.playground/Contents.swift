import UIKit

struct User {
    var login: String
    var email: String
    var age: Int
}

// MARK: Equatable (==) (!=) -> одинаковость объектов

extension User: Equatable {
    static func == (lhs: User, rhs: User) -> Bool {
        return  lhs.login == rhs.login &&
                lhs.email == rhs.email &&
                lhs.age == rhs.age
    }
    
}

let sheldon = User(login: "Sheldon", email: "shell@mail.ru", age: 41)
let leonard = User(login: "Leo", email: "leo@mail.ru", age: 41)

// 2 экземляра структуры User (по какому принципу сравнили, что имеем в виду)
if sheldon == leonard {
    print("users should differ")
} else {
    print("this users thuly differ")
}

// MARK: Comparable -> сравнение

extension User: Comparable {
    static func < (lhs: User, rhs: User) -> Bool {
        return lhs.age < rhs.age
    }
    static func <= (lhs: User, rhs: User) -> Bool {
        return lhs.age <= rhs.age
    }
    static func > (lhs: User, rhs: User) -> Bool {
        return lhs.age > rhs.age
    }
    static func >= (lhs: User, rhs: User) -> Bool {
        return lhs.age >= rhs.age
    }

}

if sheldon > leonard {
    print ("sheldon > leonard")
} else if sheldon <= leonard {
    print ("sheldon <= leonard")
}


// MARK: Hashable -> hash-значения наших экземпляров = индекс

struct Person: Hashable {
    let name: String
    let age: Int
}

let vika = Person(name: "Vikos", age: 33)
print("hashValue(vika) = \(vika.hashValue)")

let den = Person(name: "Denis", age: 22)
print("hashValue(den) = \(den.hashValue)")

// Hash-value для нашего Person
// array : Храним Person в array, мы обращаемся в массиве по индексу определенного Person
// dict/set : Ищем значение по Hash-value, то есть по значению хэша для нашего Person
let array = [vika]
let dict: [Person : Int] = [vika : vika.age]
let set: Set = [vika]



