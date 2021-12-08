import UIKit

            // Ленивые свойства
            // Lazy properties

// Внешняя функция, используемая в качестве значения последнего свойства
func bigDataProcessFunc() -> String {
    return "very long process"
}

// Класс со свойствами
class Processing {
    let smallDataProcessing = "small data processing"
    let averageDataProcessing = "average data processing"
// lazy по умолчанию возвращает nil (Не let)
    lazy var bigDataProcessing = bigDataProcessFunc()
}

let process = Processing()
// Свойство lazy не будет инициализироваться пока к нему прямо не обратишься

process.bigDataProcessing
process

// Ленивое свойство - не инициализируется до тех пор, пока к нему прямо не обращаются (Lazy)
