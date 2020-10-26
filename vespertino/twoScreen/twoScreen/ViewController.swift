//
//  ViewController.swift
//  twoScreen
//
//  Created by user182331 on 9/29/20.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBAction func onSair(_ sender: Any) {
        
        performSegue(withIdentifier: "MeuPrimeiro", sender: self)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

