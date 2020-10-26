//
//  ViewController.swift
//  projeto3
//
//  Created by user182331 on 9/27/20.
//

import UIKit

class ViewController: UIViewController {
    //variaveis
    
    @IBOutlet weak var tfPeso: UITextField!
    
    @IBOutlet weak var tfAltura: UITextField!
    
    @IBOutlet weak var lbResult: UILabel!
    
    @IBOutlet weak var imgResult: UIImageView!
   
    // declarando um variavel.;
    var imc: Double  = 0;
    
    
    @IBAction func calcular(_ sender: Any) {
         // tenta atribuir o valor e se conseguir faz o if.
        if let peso = Double(tfPeso.text!), let altura = Double(tfAltura.text!){
            imc = peso / (altura*altura)
            showResults()
        } // desembrulando um option
        
        
    }
    
    func showResults(){
        var result: String = ""
        var image: String = ""
        
        switch imc {
        case 0..<16:
            image = "simpsons_PNG94" //nome da imabem
            result = "fig 1"
        case 16..<26:
            image = "d54d6be53291588f246a458876a9072d" //nome da imabem
            result = "fig 2"
        default:
            image = "homer" //nome da imabem
            result = "fig 2"
        }
        lbResult.text = result
        imgResult.image = UIImage(named: image)
        view.endEditing(true)// some o teclado
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

