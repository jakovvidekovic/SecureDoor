//
//  UsersInteractor.swift
//  Secure Door
//
//  Created by UHP Mac 5 on 05/02/2019.
//  Copyright (c) 2019 Jakov. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class UsersInteractor {
    // MARK: - Private properties
    private let _adminUserService: AdminUserService
    private let _doorService: DoorService
    
    init(adminUserService: AdminUserService, doorService: DoorService) {
        _adminUserService = adminUserService
        _doorService = doorService
    }
}

// MARK: - Extensions -

extension UsersInteractor: UsersInteractorInterface {
    func getUsers() -> Result<[User]> {
        return _adminUserService.getUsers()
    }
    
    func getDoors() -> Result<[Door]> {
        return _doorService.getDoors()
    }
    
    func updateUserDoor(userId: UUID, doorId: UUID, allowed: Bool) -> Result<Void> {
        return _adminUserService.updateUserDoor(userId: userId, doorId: doorId, allowed: allowed)
    }
}
