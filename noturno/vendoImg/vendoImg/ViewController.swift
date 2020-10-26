//
//  ViewController.swift
//  vendoImg
//
//  Created by user182331 on 10/21/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imagem: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnMostarImg(_ sender: Any) {
        
        EscolherImagem().selecionadorImagem(self){
            imagem in
            self.imagem.image = imagem
        }
        
    }
}

