//
//  RegisterViewController.swift
//  Wake Up With
//
//  Created by Virak Ngauv on 5/1/18.
//  Copyright © 2018 Virak Ngauv. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    @IBOutlet weak var googleLogInButton: UIButton!
    @IBOutlet weak var facebookLogInButton: UIButton!
    @IBOutlet weak var emailLogInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    @IBAction func logInWithEmail(_ sender: UIButton) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
}
