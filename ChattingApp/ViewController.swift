//
//  ViewController.swift
//  ChattingApp
//
//  Created by Jesse Bartola on 8/29/16.
//  Copyright © 2016 JesseBartola. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = FIRDatabase.database().referenceFromURL("https://chattingapp-d8515.firebaseio.com/")
        ref.updateChildValues(["someValue": 123123])
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: #selector(handleLogout))
    }
    
    func handleLogout() {
        let loginController = LoginController()
        presentViewController(loginController, animated: true, completion: nil)
    }


}

