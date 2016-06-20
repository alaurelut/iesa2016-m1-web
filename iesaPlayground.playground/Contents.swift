import UIKit

var str = "Hello, playground"

// 23
class Shape {
    var sidesCount = 0
    func getInfo() -> String {
        return "A shape with \(sidesCount) sides."
    }
}

// 24
var shape = Shape()
shape.sidesCount = 7
var shapeDescription = shape.getInfo()

// 25
class NamedShape {
    var sidesCount: Int = 0
    var name: String
    init(name: String) { self.name = name }
    func getInfo() -> String { return "\(sidesCount) sides" }
}

var carre = NamedShape(name:"drapeau")

// 26
class Square : NamedShape {
    var sideLength: Double
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func getInfo() -> String {
        return "Square: L\(sideLength)."
    }
}

let s = Square(length: 5.2, name: "myS")
s.area()
s.getInfo()



// Accesseurs
class Person {
    var name: String
    init(name: String) { self.name = name }
    func getName() -> String { return "My name is \(name)" }
    func setName(name: String) { self.name = name }
}

var pName = Person(name: "Tata")
pName.getName()
pName.setName("Toto")
pName.getName()

//27
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 3
    }
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func getInfo() -> String {
        return "Length=\(sideLength)"
    }
}

var triangle = EquilateralTriangle(length: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.perimeter)
print(triangle.sideLength)



class Age: Person{
    var age: Int = 0
    init(age: Int, name: String) {
        self.age = age
        super.init(name: name)
    }
    var myAge: Int {
        get {
            return age
        }
        set {
            age = newValue
        }
    }
    func getAge() -> String {
        return "L'age est de \(age)"
    }
}

var monAge = Age(age: 23, name: "Mon âge")
print(monAge.myAge)
monAge.myAge = 24
print(monAge.myAge)




// 29 Paramètres nommés
class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes:  7)


//31 Enum et rawvalue
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace: return "ace"
        case .Jack: return "jack"
        case .Queen: return "queen"
        case .King: return "king"
        default: return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue

enum Suit: Int {
    case Spades, Hearts, Trefle, Carreaux
    func simpleDescription() -> String {
        switch self {
        case .Spades: return "Spades"
        case .Hearts: return "Hearts"
        case .Trefle: return "Trefle"
        case .Carreaux: return "Carreaux"
        default: return String(self.rawValue)
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()