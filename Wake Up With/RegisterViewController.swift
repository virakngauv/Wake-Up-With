//
//  RegisterViewController.swift
//  Wake Up With
//
//  Created by Virak Ngauv on 5/1/18.
//  Copyright © 2018 Virak Ngauv. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit

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
    
    @IBAction func logInWithFacebook(_ sender: UIButton) {
        FBSDKLoginManager().logIn(withReadPermissions: ["email"], from: self, handler: { (result, error) in
            
            print(result)
            
            guard result != nil, !(result?.isCancelled)!, error == nil else { return  FBSDKLoginManager().logOut()}
            if let accessToken = result?.token.tokenString {
                let credential = FacebookAuthProvider.credential(withAccessToken: accessToken)
                Auth.auth().signIn(with: credential) { (user, error) in
                    if let error = error {
                        print(error.localizedDescription)
                        let alert = UIAlertController(title: "error", message: "\(error.localizedDescription)", preferredStyle: .alert)
                        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                        alert.addAction(okAction)
                    }else{
                        DispatchQueue.main.async {
                            print(123)
                        }
                    }
                }
            }
            
        })
    }
    
    
    @IBAction func logInWithEmail(_ sender: UIButton) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
}
