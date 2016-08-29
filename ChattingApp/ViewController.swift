//
//  ViewController.swift
//  ChattingApp
//
//  Created by Jesse Bartola on 8/29/16.
//  Copyright © 2016 JesseBartola. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: #selector(handleLogout))
    }
    
    func handleLogout() {
        let loginController = LoginController()
        presentViewController(loginController, animated: true, completion: nil)
    }


}

