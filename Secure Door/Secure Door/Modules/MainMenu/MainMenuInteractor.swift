//
//  MainMenuInteractor.swift
//  Secure Door
//
//  Created by UHP Mac 5 on 02/02/2019.
//  Copyright (c) 2019 Jakov. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class MainMenuInteractor {
    // MARK: - Private properties -
    private let _userService: UserService
    
    init(userService: UserService) {
        _userService = userService
    }
}

// MARK: - Extensions -

extension MainMenuInteractor: MainMenuInteractorInterface {
    func getUserEmail() -> String? {
        return _userService.getCurrentUserEmail()
    }
    func logoutUser() {
        _userService.logoutCurrentUser()
    }
}