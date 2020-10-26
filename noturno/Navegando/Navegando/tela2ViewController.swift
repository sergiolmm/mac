//
//  tela2ViewController.swift
//  Navegando
//
//  Created by user182331 on 10/26/20.
//

import UIKit

class tela2ViewController: UIViewController {

    @IBOutlet weak var botao2: UIButton!
    
    @IBOutlet var botoes: [UIButton]!
    
  
    @IBAction func btn01(_ sender: Any) {
        print("ol->" + (sender as! UIButton).restorationIdentifier! )
    }
    
    
    @IBAction func voltarTla(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
  
    @IBAction func TrocarNome(_ sender: Any) {
        botao2.setTitle("ALO", for: .normal)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func mudou(_ sender: UISwitch){
        if sender.isOn {
            print("esta ligado")
        } else {
            print("esta desligado")
        }
    }
    @IBAction func selecionou(_ sender: Any){
        
            print("Selecionou")
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
