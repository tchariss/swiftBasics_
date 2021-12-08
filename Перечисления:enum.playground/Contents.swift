import UIKit

            // Перечисления //
            // Enum //

// Используются, когда необходимо сгруппировать множество альтернативных взаимосвязанных значений

// Шаблон
/*
    enum ИмяПеречисления {
        case значение1
        case значение2
        // другие значения
    }
*/

enum CurrencyUnit {
    case rouble
    case euro

//   == case rouble, euro
}

var roubleCurrency: CurrencyUnit = .rouble
var otherCurrency = CurrencyUnit.euro
// меняем значение одного из параметров на другой член перечисления»
otherCurrency = .rouble


// ------------------------------------------------ //
// Ассоциированные параметры

enum AdvancedCurrencyUnit {
    case rouble(сountries: [String], shortName: String)
    case euro(сountries: [String], shortName: String)
}

// Без краткого наименование валюты, так как описание ассоциированных параметров
enum AdvancedCurrencyUnitTwo {
    case rouble([String], String)
    case euro([String], String)
}

let euroCurrency: AdvancedCurrencyUnit = .euro(сountries: ["German", "France"], shortName: "EUR")
 


// страны, использующие доллар
enum DollarCountries {
    case usa
    case canada
    case australia
}

// дополненное перечисление
enum AdvancedCurrencyUnitThree {
    case rouble(сountries: [String], shortName: String)
    case euro(сountries: [String], shortName: String)
    case dollar(nation: DollarCountries, shortName: String)
}

let dollarCurrence: AdvancedCurrencyUnitThree = .dollar(nation: .canada, shortName: "USD")


// ------------------------------------------------ //
// Вложенные перечисления /

enum AdvancedCurrencyUnitFour {
    enum DollarCountriesFour { // обладает ограниченной областью видимости
        case usa
        case canada
        case australia
    }
    case rouble(countries: [String], shortName: String)
    case euro(countries: [String], shortName: String)
    case dollar(nation: DollarCountriesFour, shortName: String)
}

let australia: AdvancedCurrencyUnitFour.DollarCountriesFour = .australia


// ------------------------------------------------ //
// Оператор switch для перечислений

// let dollarCurrence: AdvancedCurrencyUnitThree = .dollar(nation: .canada, shortName: "USD")
switch dollarCurrence {
case .rouble:
    print("Рубль")
    
case let .euro(сountries, shortname):
    print("Евро, Страны: \(сountries); Краткое наимнование валюты \(shortname)")
    
// case let .dollar(nation, shortname):
case .dollar(let nation, let shortname):
    print("Доллар \(nation); Краткое наимнование валюты \(shortname)")
}


// ------------------------------------------------ //
// Связанные значения членов перечисления

// Набор смайликов
enum Smile: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":(" // печаль
    case surprise = "o_O"
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto = 999
} // Для каждого перечисления значение увеличивается на единицу, так как не указано иное

var myPlanet: Planet = .earth
myPlanet.rawValue // исходное значение типа Int "3"

let iAmHappy = Smile.joy
iAmHappy.rawValue // исходное значение типа String ":)"

// Инициализатор перечисления Planet — это метод init(rawValue:)
// Ему передается указатель на исходное значение, связанное с искомым членом этого перечисления

var otherPlanet = Planet.init(rawValue: 6) // saturn
var otherInvalidPlanet = Planet.init(rawValue: 12) // nil

func checkPlanet() {
    guard let validPlanet = otherPlanet else { return }
    print (validPlanet)
    guard let validPlanetTwo = otherInvalidPlanet else { return }
    print (validPlanetTwo)
}

checkPlanet()

// ------------------------------------------------ //
// Свойства в перечислениях

enum SmileTwo: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    
    // вычисляемое свойство
    var description: String { return self.rawValue }
    // Получение доступа к текущему члену перечисления
}

let mySmile: SmileTwo = .sorrow
mySmile.description // ":("

// ------------------------------------------------ //
// Методы в перечислениях

enum SmileThree: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    
    var description: String { return self.rawValue }
    
    func about() {
        print("Перечисление содержит список смайликов")
    }
}

var otherSmile = SmileThree.laugh // == : SmileThree = .laugh
otherSmile.about()

// ------------------------------------------------ //
// Оператор self

/*
Оператор self используется внутри перечисления в двух случаях:
 — для доступа к текущему члену перечисления;
 — для доступа к свойствам и методам перечисления (self необязательный)
*/

enum SmileFour: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    
    var description: String { return self.rawValue }
    
    func descriptionValue() -> SmileFour {
        return self // возврат самого экземпляра
    }

// Возвращает связанное значение члена данного экземпляра
    func descriptionRawValue() -> String {
        return rawValue // == self.rawValue
    }
}

var otherSmile2 = SmileFour.joy
otherSmile2.descriptionValue() // joy
otherSmile2.descriptionRawValue() // ":)"

// ------------------------------------------------ //
// Рекурсивные перечисления

enum ArithmeticExpression {
    case addition(Int, Int) // операция сложения/добавления
    case subtraction(Int, Int) // операция вычитания
    
// Происходит поиск определенного в данном экземпляре члена перечисления
    func evaluate() -> Int {
        switch self {
// Путем связывания значений возвращается результат требуемой арифметической операции
        case .addition(let one, let two):
            return one + two
        case .subtraction(let one, let two):
            return one - two
        }
    }
}

let exprs = ArithmeticExpression.addition(5, 7)
exprs.evaluate()

// indirect -> для того чтобы разрешить членам перечисления обращаться к этому перечислению
// Перед enum || Перед case

enum ArithmeticExpressionOne {
// Указатель на конкретное значение (Операнд для проведения операци )
    case number(Int)
    
// Указатель на операцию сложения
    indirect case addition(ArithmeticExpressionOne, ArithmeticExpressionOne)
    
// Указатель на операцию вычитания
    indirect case subtraction(ArithmeticExpressionOne, ArithmeticExpressionOne)
    
// Метод, проводящий операцию
    func evaluate(_ expression: ArithmeticExpressionOne? = nil) -> Int {
// определение типа операнда (значение или операция)
        switch expression ?? self {
            case let .number(value):
                return value
            case let .addition(valueOne, valueTwo):
                return evaluate(valueOne) + evaluate(valueTwo) // self.evaluate === evaluate
            case .subtraction(let valueOne, let valueTwo):
                return evaluate(valueOne) - evaluate(valueTwo) // self.evaluate === evaluate
        }
    }
}

let expr = ArithmeticExpressionOne.addition(.number(20), .subtraction(.number(34),.number(22)))
expr.evaluate() // 32
