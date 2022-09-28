//
//  ViewController.swift
//  MyValidation
//
//  Created by RajeshQanvus on 09/28/2022.
//  Copyright (c) 2022 RajeshQanvus. All rights reserved.
//

import UIKit
import MyValidation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let answer = MyValidation.isValidName("gob")
        print(answer)
        
        let phonenumber = MyValidation.isValidPhoneNumber(1234567890)
        print(phonenumber)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

