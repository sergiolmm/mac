import UIKit

var str = "Hello, playground"


var noturno = "Ola pessoal"
var teste = "alo"
print(teste)
var teste2 = str + "\n"+teste
print(teste2)
var num = 20

var t3 = "\(noturno) como estao \(teste2) \n \(num)"
print(t3)
print(t3.count)

//var texto = "sdfkdlsfksdfkçdskflçksdfçksdl"

var texto = """
alo  bvvv
   como vai
                voce

tudo bem \(num)
"""

// options

print(texto)

//options
var endereco : String?

if let end = endereco {
  print(end)
}else{
    print("nao ha nada")
}
if endereco == nil {
    endereco = "Rua culto a ciencia"
}
print(endereco)
print(endereco!)
endereco = nil
print(endereco)
//print(endereco!)
var num2 = 1
if num2 == 10 {
    print(num2)
}else if num2 > 30 {
       print("nao")
} else {
    print("ok")
}
var str2 = "a"

switch str2 {
case "a", "e", "i":
    print("vogal")
default:
    print("consoante")
}
// range  - closerange halfclose range
var i = 0...10
print(i)
for x in i{
  print(x)
}
//half close
//
//for k in j {
//    print(k)
//}

// case "a"..."j"

//arry
var ar1 = [1,4,5,8]

print(ar1)

