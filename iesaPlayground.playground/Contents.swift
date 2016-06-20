//: Playground - noun: a place where people can play

import UIKit

class Shape {

    // var sidesCount = 0
    
    // Exemple de propriétés
    var sides: Int
    var nom: String
    
    // Fonction d'initialisation
    init(sides: Int, nom: String) {
        self.sides = sides
        self.nom = nom
    }
    
    func getInfo() -> String {
        return "A shape with \(sides) sides."
    }
    
}

var triangle = Shape(sides:3, nom: :"triangle")
print( triangle.getInfo())
print( triangle.sides)
print( triangle.nom)

triangle.sides = 5
print( triangle.sides)
