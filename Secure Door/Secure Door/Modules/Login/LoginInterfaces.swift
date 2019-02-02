//
//  LoginInterfaces.swift
//  SecureDoor
//
//  Created by UHP Mac 5 on 01/02/2019.
//  Copyright (c) 2019 Jakov. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum LoginNavigationOption {
}

protocol LoginWireframeInterface: WireframeInterface {
    func navigate(to option: LoginNavigationOption)
}

protocol LoginViewInterface: ViewInterface {
}

protocol LoginPresenterInterface: PresenterInterface {
    var _view:LoginViewInterface? { get set }
    func loginAction(username: String?, password: String?)
}

protocol LoginInteractorInterface: InteractorInterface {
    func loginUser(username:String, password: String, completion: @escaping (Result<Bool>) -> Void)
}
