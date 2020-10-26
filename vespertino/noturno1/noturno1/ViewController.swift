//
//  ViewController.swift
//  noturno1
//
//  Created by user182331 on 9/30/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtStr: UITextField!
    var str : String = ""
    
    
    @IBAction func mudarTela(_ sender: Any) {
        
        view.endEditing(true)
        performSegue(withIdentifier: "LigNot", sender: self)
        print("mudou")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("executou viewWill")
        txtStr.text = ""
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtStr.text = ""
        print("LOad")
    
    }

    override func prepare( for segue: UIStoryboardSegue, sender: Any?){
        
        if (segue.identifier == "LigNot"){
        let  destVC : SecondViewController = segue.destination as! SecondViewController
        str = txtStr.text!
        
        destVC.strRecebida = str
        txtStr.text=""
        }
        print("preper")
    }
    
    @IBAction func onTerceira(_ sender: Any) {
        performSegue(withIdentifier: "TerceiraSegue", sender: self)
        print("mudou")
    }
}

