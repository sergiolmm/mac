//
//  ViewController.swift
//  Navegando
//
//  Created by user182331 on 10/26/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    @IBAction func unwindViewWithSegue(segue  : UIStoryboardSegue){
        
    }
}

