//
//  ViewController.swift
//  AppMain
//
//  Created by Emerson Sampaio on 21/08/23.
//

import UIKit
import ChartFeature

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ShowGrafico(_ sender: Any) {
        navigationController?.pushViewController(ChartViewController(), animated: true)
    }
    
}

