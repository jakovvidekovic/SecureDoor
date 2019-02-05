//
//  UsersViewController.swift
//  Secure Door
//
//  Created by UHP Mac 5 on 05/02/2019.
//  Copyright (c) 2019 Jakov. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

final class UsersViewController: UIViewController {

    // MARK: - Public properties -

    var presenter: UsersPresenterInterface!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
	
}

// MARK: - Extensions -

extension UsersViewController: UsersViewInterface {
    func reloadData() {
        tableView.reloadData()
    }
}

extension UsersViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return presenter.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOrItems(in: section)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return presenter.titleForHeader(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userDoorCell", for: indexPath) as! UserDoorTableViewCell
        let item = presenter.item(at: indexPath)
        cell.configure(with: item)
        return cell
    }
    
}
