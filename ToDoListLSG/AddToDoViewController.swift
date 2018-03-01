//
//  ViewController.swift
//  ToDoListLSG
//
//  Created by Alumne on 1/3/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var newItemTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

