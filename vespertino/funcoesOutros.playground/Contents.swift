import UIKit

var str = "Hello, playground"

func calculaSoma(a : Int, b: Int) -> Int{
    
    return a + b
    
}

let x = calculaSoma(a: 10, b: 20)
print(x)

func calculaSoma2(_ a : Int, _ b: Int) -> Int{
    
    return a + b
    
}


let y = calculaSoma2(10, 20)
print(y)
let z = calculaSoma(a:10, b:230)
print(z)

func calculaSoma3(_ a : Int, _ b: Int = 10) -> Int{
    
    return a + b
    
}
print(calculaSoma3(30))
print(calculaSoma3(30,30))
// Closures  -> Lambda

func calcula( _ a: Int, _ b : Int, operation: (Int,Int)-> Int) -> Int{
    return operation(a,b)
}

print(calcula(10,10,operation: calculaSoma3))

print(calcula(10,10,operation: { (a: Int, b: Int)->Int in
    return a / b
}))

calcula(10,30,operation:{a,b in
            return a * b})

calcula(10,20) { a, b  in
    return a * b
}

calcula(10,40, operation: {
    return $0 + $1
})

calcula(20,40,operation: *)

calcula(30,30){$0 * $1}

import Foundation
var names = [ "  guilherme  ", "    Gabriel :" ," Sergio ", " INARA ", " PEDro"]

let nomesCorretos = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)})
print (nomesCorretos)

let nomesCorretos2 = nomesCorretos.map({$0 + " Cotuca" })
print (nomesCorretos2)

//throw

enum tipoErro: Error {
    case erro1
    case erro2
    case erro3
}

func login(_ user: String, _ pwd: String) throws -> Bool{
    if user != "Sergio"{
        throw tipoErro.erro1
    }
    if pwd != "1234"{
        throw tipoErro.erro2
    }
    return true
}

do {
    let loginVar = try login("Sergio","123")
} catch tipoErro.erro1 {
    print("erro 1")
}catch tipoErro.erro2{
    print("Senha errrada")
}

let loginV = try? login("Sergio","1234")

//let loginV1 = try! login("Sergio","124")
//print(loginV1)


infix operator >-<
func >-< (total: Int, universo: Int)-> [Int]{
    var result: [Int] = []
    while result.count < total {
        let randomNumber = Int(arc4random_uniform(UInt32(universo))+1)
        if !result.contains(randomNumber) {
            result.append(randomNumber)
        }
    }
    return result.sorted()
}

print(6>-<60)
print(15>-<25)

print(15>-<25)

