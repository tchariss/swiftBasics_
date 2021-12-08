import UIKit

            // Наблюдатели свойств
            // Property observers

// Наблюдают за изменениями значений свойств

class SecretLabEmployee {
    
    var levelAccess = 0 {
        // тело свойства
        
        // Будет установлено
        willSet(newValue) { // Можем получить новое значение
            print("Новый уровень доступа \(newValue)")
        }
        
        // Было установлено
        didSet(oldValue) {
            if levelAccess > 0 {
                accessToDataBase = true
            } else {
                accessToDataBase = false
            }
            print("В прошлый раз у меня был уровень доступа \(oldValue)")
        }
    }
    
    var accessToDataBase = false
}

let employee = SecretLabEmployee()
employee.levelAccess
employee.accessToDataBase

print("----------")
employee.levelAccess = 1
employee.accessToDataBase
