//
//  LoginInterfaces.swift
//  SecureDoor
//
//  Created by UHP Mac 5 on 01/02/2019.
//  Copyright (c) 2019 Jakov. All rights reserved.
//

import UIKit

enum LoginNavigationOption {
    case home
}

protocol LoginWireframeInterface: WireframeInterface {
    func navigate(to option: LoginNavigationOption)
}

protocol LoginViewInterface: ViewInterface {
}

protocol LoginPresenterInterface: PresenterInterface {
    func loginAction(username: String?, password: String?)
}

protocol LoginInteractorInterface: InteractorInterface {
    func loginUser(username:String, password: String, completion: @escaping (Result<Bool>) -> Void)
}
