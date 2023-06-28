//
//  ViewController.swift
//  SBProject1
//
//  Created by Hong Le on 6/26/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var HelloLabel: UILabel!
    @IBOutlet weak var HelloTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func HelloTouchUp(_ sender: Any) {
        let name = HelloTextField.text!
        HelloLabel.text = "Hello World From \(name)"
    }
    
}

