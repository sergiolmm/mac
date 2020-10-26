//
//  segundaViewController.swift
//  clicoVidaVesp
//
//  Created by user182331 on 10/19/20.
//

import UIKit

class segundaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Tela 2 did Load")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 2 Will Appear")
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(" tela 2 Did appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(" tela 2 will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(" tela 2 Did disappear")
    }

}
