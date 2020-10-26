import UIKit

var str = "Hello, playground"

 // criando fucoes

func sum(_ a: Int, _ b: Int) -> Int {
    
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a-b
}

func teste (a : Int)-> Int {
    
    return a * 10
    
}

print(teste(a: 10))

func teste2 (_ a : Int ,_ b : Int)-> Int {
    
    return a * b
    
}

print(teste2(10, 20 ))


print(sum(10,20))


typealias Op = (Int, Int)-> Int

func ativaOperadores(_ a: Int, _ b: Int, operation: Op ) -> Int {
    
    return operation(a, b)
    
}

let resultado = ativaOperadores(100, 200, operation: sum)
print(resultado)
let resultado2 = ativaOperadores(500, 200, operation: subtract)
print(resultado2)

/*
 
 { (parametro: String) -> String in
      bloco de codigo
 
      return String..
 }
 */

ativaOperadores(40, 40, operation: {(a: Int, b: Int) -> Int in
    return a * b
})

ativaOperadores(40, 40, operation: {(a, b) -> Int in
    return a * b
})


ativaOperadores(40, 40, operation: {a, b in
    return a * b
})

ativaOperadores(40, 40, operation: { return $0 * $1})

ativaOperadores(40, 40, operation: *)

import Foundation

var names = [
    "    Carolina",
    "      MATEUS     ",
    "   Pedro  ",
    "    IVAN     ",
    "    Mishelle    "
]

print(names)
//MAP

let corretos = names.map({$0.trimmingCharacters(in: CharacterSet.whitespaces)} )



print(corretos)

let corretos2 = names.map({ (a: String)-> String in
    return a.trimmingCharacters(in: CharacterSet.whitespaces)} )



print(corretos2)

let corretos2a = corretos.map({ (a: String)-> String in
    return a.uppercased() + " 4 semestre"} )


print(corretos2a)

// tratamento de erros


enum LoginError: Error{
    case wrongLogin
    case wrongPassword
}


func login(userName: String, password: String) throws -> Bool {
    
    
    if userName != "sergio"{
        throw LoginError.wrongLogin
    }
    if password != "123" {
        throw LoginError.wrongPassword
    } else {
        return true
    }
    
    
}

do{
    let resLog = try login(userName: "sergio", password: "12")
}catch LoginError.wrongLogin{
    print("Cara digite o nome certo")
}catch LoginError.wrongPassword{
    print("A senha esa correta")
}

// operadores personalizados
var valor : Int = 0
valor += 1
print(valor)

prefix operator <|
prefix func <| (a: [Int])->[Int] {
    let result = a.map({$0 - 1})
    return result
}

let ages = [9,25,30,43,7,18]

let idadeMenosUm  = <|ages


//prefix operator <|

// infix operator

infix operator >**<
func >**< (total: Int, universo: Int) -> [Int] {
    
    var result: [Int] = []
    while result.count < total {
        let randomNumber = Int(arc4random_uniform(UInt32(universo))+1)
        if !result.contains(randomNumber){
            result.append(randomNumber)
        }
    }
    return result.sorted()
}

print(6>**<60)
print(15>**<25)

