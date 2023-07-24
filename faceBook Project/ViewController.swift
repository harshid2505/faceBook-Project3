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
    
    @IBOutlet weak var te: UITextField!
    @IBOutlet weak var t2: UITextField!
    @IBOutlet weak var t3: UITextField!
    
    var refa: Firestore!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refa = Firestore.firestore()
    }

    @IBAction func buttonAction(_ sender: Any) {
       add()
    }
    
    func add(){
        refa.collection("Student").addDocument(data: ["ID":te.text!,"Name":t2.text!,"Gr":t3.text!])
    }
    
}

