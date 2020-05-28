//
//  ViewController.swift
//  Navigation_Swift
//
//  Created by Rafael on 5/27/20.
//  Copyright © 2020 Rafael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBAction func abrir(_ sender: Any) {
        performSegue(withIdentifier: "telaPrincipal", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let T = segue.destination as!UINavigationController
        let vc = T.topViewController as! SUAHSAHSAUHSAViewController
        vc.texto = txtNome.text!
    }
}

