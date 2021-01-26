//
//  ViewController.swift
//  Login
//
//  Created by Tech on 2021-01-26.
//  Copyright © 2021 SuhoKang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_username: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signOutBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        txt_username.layer.cornerRadius = 16
        txt_password.layer.cornerRadius = 16
        signInBtn.layer.cornerRadius = 16
        signOutBtn.layer.cornerRadius = 16
        
    }
}

