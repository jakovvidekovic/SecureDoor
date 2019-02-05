//
//  UsersPresenter.swift
//  Secure Door
//
//  Created by UHP Mac 5 on 05/02/2019.
//  Copyright (c) 2019 Jakov. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class UsersPresenter {

    // MARK: - Private properties -

    private weak var _view: UsersViewInterface?
    private let _wireframe: UsersWireframeInterface
    private let _interactor: UsersInteractorInterface
    
    private  var _users: [User] = []
    
    private  var _doors: [Door] = []

    // MARK: - Lifecycle -

    init(wireframe: UsersWireframeInterface, view: UsersViewInterface, interactor: UsersInteractorInterface) {
        _wireframe = wireframe
        _view = view
        _interactor = interactor
    }
}

// MARK: - Extensions -

extension UsersPresenter: UsersPresenterInterface {
    func viewDidLoad() {
        _users = _interactor.getUsers().success ?? []
        _doors = _interactor.getDoors().success ?? []
    }
    
    func numberOfSections() -> Int {
        return _users.count
    }
    
    func numberOrItems(in section: Int) -> Int {
        return _doors.count
    }
    
    func item(at indexPath: IndexPath) -> UserDoorViewItem {
        let door = _doors[indexPath.row]
        let userId = _users[indexPath.section].id!
        return UserDoorViewItem(isAllowed: door.userAllowed(userId: userId), doorName: door.name)
    }
    
    func titleForHeader(in section: Int) -> String {
        return _users[section].email
    }
    
    func didSelectItem(at indexPath: IndexPath) {
    }
    
}
