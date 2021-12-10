import UIKit

            // Уровни доступа //
            // Access levels //

// Уровни доступа нужны для того чтобы ограничить область видимости метода или свойства

// Модуль -> программа/подпрограмма , которую мы разрабатываем, используем
// Исходный файл -> в котором мы работаем

// 5 уровней доступа //


// 1 //
// Открытый (open access)
// Фреймворки, потому что наследуются

// 2 //
// Публичный (public access)


// 3 //
// Внутренний (internal access)
// Доступен по умолчанию/дефолту (Внутри модуля)

// ---------------------------------------------- //

// 4 //
// Файл - частный (file private)
/* Можем использовать если находится внутри одного файла */


// 5 //
// Частный (private)
/* Закрытый, не позволяет использовать методы и свойства
Внутри класса/структуры/перечисления можно обращаться */

class AccessPrivate {
    
    private let property = true
    fileprivate let otherProperty = false
    
//    print(property)
//    print(otherProperty)
}

extension AccessPrivate {
    var someIntegetProperty: Int {
        if otherProperty {
            return 10
        }
        return 20
    }
}

class HelperClass {
    let ap = AccessPrivate()
    
    var someIntegetProperty: Int {
//        if ap.property
        if ap.otherProperty { // property НЕДОСТУПНО (private)
            return 10
        }
        return 20
    }
}



            // Alias type //
            // Псевдоним типов //

let length: Int = 35
let DaysOfTheWeek: String = "tuesday"

typealias Meter = Int // Псевдоним типа (Meter = Int)
typealias Days = String // Псевдоним типа (Days = String)

let lengthOther: Meter = 35
let DaysOfTheWeekOther: Days = "tuesday"



typealias DoubleInteger = (Int, Int)
let someConstant: DoubleInteger = (1, 2) // кортеж



let dictionary = [String: Int]() // Пустой словарь
typealias DictionaryType = [String: Int]
let dictionaryOne: DictionaryType = [:] // Тоже пустой словарь

