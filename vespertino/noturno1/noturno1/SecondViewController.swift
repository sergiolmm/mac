//
//  SecondViewController.swift
//  noturno1
//
//  Created by user182331 on 9/30/20.
//

import UIKit

class SecondViewController: UIViewController {

    var strRecebida :String = ""
    
    @IBOutlet weak var lblRecebido: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblRecebido.text = strRecebida
    }
    

    @IBAction func onClickReturn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
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
