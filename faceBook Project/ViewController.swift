//
//  ViewController.swift
//  faceBook Project
//
//  Created by HARSHID PATEL on 23/07/23.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseFirestore
import FirebaseCore

class ViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var createNewButton: UIButton!
    
    var refa: Firestore!

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSape()
        refa = Firestore.firestore()
    }
    
    func buttonSape(){
        logInButton.layer.cornerRadius = 22
        createNewButton.layer.borderWidth = 1.5
        createNewButton.layer.borderColor = UIColor.lightGray.cgColor
        createNewButton.layer.cornerRadius = 18
    }
    
}

