//
//  MainMenuViewController.swift
//  Secure Door
//
//  Created by UHP Mac 5 on 02/02/2019.
//  Copyright (c) 2019 Jakov. All rights reserved.
//

import UIKit

final class MainMenuViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: MainMenuPresenterInterface!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usersButton: MenuButton!
    @IBOutlet var menuButtons: [MenuButton]!
    
    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
    
    @IBAction func menuButtonAction(_ sender: MenuButton) {
        for button in menuButtons {
            button.active = sender.tag == button.tag
        }
        switch sender.tag {
        case 0:
            presenter.doorsAction()
        case 1:
            presenter.eventsAction()
        case 2:
            presenter.usersAction()
        default:
            break
        }
    }
    
    @IBAction func logouButtonAction(_ sender: Any) {
        presenter.logoutAction()
    }
    
}

// MARK: - Extensions -

extension MainMenuViewController: MainMenuViewInterface {
    func showUsersButton() {
        usersButton.isHidden = false
    }
    
    func setUserEmail(email: String) {
        usernameLabel.text = email
    }
    
    func hideUsersButton() {
        usersButton.isHidden = true
    }
    
}
