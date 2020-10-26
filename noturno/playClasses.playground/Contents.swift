import UIKit

var str = "Hello, playground"

class Person {

    var name: String
    var gender: Character
    private var _age: Int = 0 {
        didSet {
            _age = min(_age, idadeMax)
        }
        
    }
 
    var idadeMax: Int {
        return 100
    }
    
    var age: Int{
        get{
            return _age
        }
        set {
            self._age = newValue
        }
    }
    
    //Designated Initializer
    init (name: String, gender: Character){
        
        self.name = name
        self.gender = gender
    }
    
    // Construror conveniente
    convenience init (name: String){
        
        self.init(name: name, gender:"M")
        
    }

    
    final func speak(sentence: String){
        if _age < 3{
            print("crianca")
        }
        else{
            print(sentence)
        }
    }
    func apresentecao(){
        speak(sentence: "Ola eu sou o \(name)")
    }
    
}

let pessoa = Person(name: "Sergio",gender: "M")
pessoa.speak(sentence: "alo")
pessoa.age = 30
pessoa.speak(sentence: "alo")
pessoa.apresentecao()
print(pessoa.idadeMax)
print(pessoa.age)
pessoa.age = 120
print(pessoa.age)
let pes2 = Person(name: "Joao")
pes2.apresentecao()
print(pessoa.age)

class child: Person{
    
    override init(name: String, gender:Character){
        super.init(name: name, gender: gender)
    }
    override func apresentecao() {
        super.speak(sentence: "E uma crianca \(name)")
    }
    
    func apresentecao(str: String) {
        super.speak(sentence: "E uma crianca \(str)")
    }
    func apresentecao(str: Int) {
        super.speak(sentence: "E uma crianca \(str)")
    }
}

let cld = child(name:"maria",gender: "F")
cld.age = 5
cld.apresentecao()
cld.apresentecao(str: "chiquinha")
cld.apresentecao(str: 10)


