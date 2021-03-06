//
//  LoginViewController.swift
//  SecureDoor
//
//  Created by UHP Mac 5 on 01/02/2019.
//  Copyright (c) 2019 Jakov. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: LoginPresenterInterface!

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
    @IBAction func loginButtonAction(_ sender: Any) {
        presenter.loginAction(username: emailTextField.text, password: passwordTextField.text)
    }
}

// MARK: - Extensions -

extension LoginViewController: LoginViewInterface {
}
