//
//  ViewController.swift
//  clicoVidaVesp
//
//  Created by user182331 on 10/19/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Tela 1 didLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 1WillAppear")
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(" tela 1 Didi appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(" tela 1 will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(" tela 1 Didi disappear")
    }
}

