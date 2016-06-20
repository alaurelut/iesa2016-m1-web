//: Playground - noun: a place where people can play

import UIKit

class Shape {
    
    // Exemple de propriétés
    var name: String
    
    // Fonction d'initialisation
    init(name: String) {
        self.name = name
    }
    
    
}

class Square : Shape{
    var sidelength : Double
    init( length : Double, name : String){
        self.sidelength = length
        super.init(name: name)
        // super.nom = name
        // super.sides = sides
    }
}

var carre = Shape( name: "carre")
print( carre.name)


class NamedShaped {
    var sidesCount : Int = 0
    var name: String
    init(name:String) { self.name = name }
    func getInfo() -> String {
        return "Nombre de cote =\(sidesCount)"
    }
}

class EquilateralTriangle: NamedShaped {
    var sidelength: Double = 0.0
    init(length: Double, name: String) {
        self.sidelength = length
        super.init(name: name)
        sidesCount = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sidelength
        }
        set {
            sidelength = newValue / 3.0
        }
    }
    
    override func getInfo() -> String {
        return "Length=\(sidelength)"
    }
}

var triangle = EquilateralTriangle(length: 3.3, name: "a triangle")
print(triangle.perimeter)
print(triangle.sidelength)
triangle.perimeter = 6.0
print(triangle.perimeter)
print(triangle.sidelength)
