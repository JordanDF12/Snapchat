//
//  ViewController.swift
//  Snapchat
//
//  Created by Mac 10 on 10/27/21.
//  Copyright © 2021 empresa. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            (user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se producjo el siguiente error: \(String(describing: error))")
            }else{
                print("Inicio de Sesion Exitoso")
            }
        }
    }
}

