//: Playground - noun: a place where people can play

import UIKit

var rango = 0...100
var modulo2 = 0
var modulo5 = 0

for r in rango {
    
    modulo2 = r%2
    modulo5 = r%5
    print ("# \(r)", terminator: "")
  
    if modulo5 == 0 {
        print(" Bingo!!!", terminator: "")
    }
    if modulo2 == 0{
        print(" Par!!!", terminator: "")
    }
    if modulo2 == 1{
        print(" Impar!!!", terminator: "")
    }
    if r >= 30 && r <= 40{
        print(" Viva Swift!!!", terminator: "")
    }
    print("\n")
    
}
