//
//  ViewController.swift
//  calculoBase
//
//  Created by user182331 on 9/28/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfEscolha: UITextField!
   
    
    @IBOutlet weak var imgResult: UIImageView!
    
    @IBOutlet weak var viewResult: UIView!
    
    var valor: Int = 0;
    
    
    @IBOutlet weak var lbResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbResult.text = ""
    }


    @IBAction func limpar(_ sender: Any) {
        imgResult.image = UIImage(named: "")
    }
    @IBAction func showResult(_ sender: Any) {
    
        var nome: String = ""
        
        if let valor = Int(tfEscolha.text!){
            switch valor {
            case 0:
                nome = "img1"
            case 1..<4:
                nome = "img2"
            default:
                nome = "homer"
            }
            viewResult.isHidden = false
            imgResult.image = UIImage(named: nome)
            view.endEditing(true)
            lbResult.text = nome
        }
        
    
    }
    
    
}

