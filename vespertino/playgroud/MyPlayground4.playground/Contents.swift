import UIKit

var str = "Hello, playground"

var a = 0
for i in 1...15 {
    a = a + i
    print(a)
}

print(str)

let view = UIView(frame: CGRect(x: 0,y: 0,width: 200,height: 200))
view.backgroundColor = .lightGray

let button = UIButton(type: .system)
button.frame = CGRect(x: 0, y: 0, width: 90, height: 40)
button.setTitle("Alo", for: .normal)
view.addSubview(button)
//  comentario

/*
 
 Comentario de bloco
 *
 */


