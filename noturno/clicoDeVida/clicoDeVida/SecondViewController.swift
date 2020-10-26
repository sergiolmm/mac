//
//  SecondViewController.swift
//  clicoDeVida
//
//  Created by user182331 on 10/14/20.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("tela 2")

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear( _ animated: Bool){
        super.viewWillAppear(animated)
        print("Tela 2 : View ira aparecer")
        
    }
    override func viewDidAppear( _ animated: Bool){
        super.viewDidAppear(animated)
        print("Tela 2 : View ja apareceu")
        
    }
    override func viewWillDisappear( _ animated: Bool){
        super.viewWillDisappear(animated)
        print("Tela 2 : View ira disaparecer")
        
    }
    
    override func viewDidDisappear( _ animated: Bool){
        super.viewDidDisappear(animated)
       var str = (animated) ? " ja" : " nao"

        print("Tela 2 : View ja disapareceu" + str )
        
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
