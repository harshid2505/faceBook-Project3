//
//  forgetPage.swift
//  faceBook Project
//
//  Created by HARSHID PATEL on 02/08/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase
import FirebaseFirestore

class forgetPage: UIViewController {
    
    @IBOutlet weak var mobileLb: UILabel!
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    
    var change = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forgotPasswordButton.layer.cornerRadius = 22
    }
    
    func resetPasseord(){
        Auth.auth().sendPasswordReset(withEmail: mobileTextField.text!){ error in
            if error == nil{
                print("Success")
            }
            else{
                print(error?.localizedDescription)
            }
        }
    }
    
//    func updatePassword(){
//        Auth.auth().currentUser?.updatePassword(to: passwd){error in
//            if error == nil{
//                print("password Update")
//            }
//            else{
//                print()
//            }
//        }
//    }
    
    func alert(){
        let alert = UIAlertController.init(title: "Enter a mobile number", message: "You'll need to enter a 10 digit number to continue.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(alert, animated: true)
    }
    
    @IBAction func backButtonAction(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(identifier: "ViewController") as!
        ViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    @IBAction func forgotPasswordButtonAction(_ sender: UIButton) {
        resetPasseord()
    }
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        if change == 0{
            mobileTextField.placeholder = "Mobile number"
            searchButton.setTitle("Search by email instead", for: .normal)
            mobileLb.text = "Enter your mobile number."
            change = 1
        }
        else{
            mobileTextField.placeholder = "Email"
            searchButton.setTitle("Search by mobile number instead", for: .normal)
            mobileLb.text = "Enter your email address."
            change = 0
        }
    }
    
    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}
