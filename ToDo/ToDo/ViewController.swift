//
//  ViewController.swift
//  ToDo
//
//  Created by Hong Le on 6/26/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtItem: UITextField!
    @IBOutlet weak var txtList: UITextView!
    
    var itemsToDo:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addItem(_ sender: Any) {
        if (txtItem.text! == "") {
            return
        }
        
        itemsToDo.append(txtItem.text!)
        txtList.text = ""
        
        for item in itemsToDo {
            txtList.text.append("\(item)\n")
        }
        
        txtItem.text = ""
    } //this is a comment
    
}

