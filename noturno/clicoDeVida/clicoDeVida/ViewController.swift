//
//  ViewController.swift
//  clicoDeVida
//
//  Created by user182331 on 10/14/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(" Carregou ")
    }

    override func viewWillAppear( _ animated: Bool){
        super.viewWillAppear(animated)
        print("Tela 1 : View appear")
        
    }
    override func viewDidAppear( _ animated: Bool){
        super.viewDidAppear(animated)
        print("Tela 1 : View Did appear")
        
    }
    override func viewWillDisappear( _ animated: Bool){
        super.viewWillDisappear(animated)
        print("Tela 1 : View Disappear")
        
    }
    
    override func viewDidDisappear( _ animated: Bool){
        super.viewDidDisappear(animated)
        print("Tela 1 : View ja desappear")
        
    }
    

}

