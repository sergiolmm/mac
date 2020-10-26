import UIKit

var str = "Hello, playground"

var valorf = 12.2
print(valorf)

// let define uma constante
let valor2 = 12
print(valor2)
var valor3:Int
valor3 = 30
print(valor3)
// se variavel ja existe no pode fazer let
var strV = "100"

let valor4 = Int(strV)
print(valor4!) // arriscado se nao tiver um valor valido

var strv2 = "100a"
let val2 = Int(strv2)
print(strv2)
print(val2)
let val3 = Int(strv2) ?? 0
print(val3)


