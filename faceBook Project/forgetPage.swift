//
//  forgetPage.swift
//  faceBook Project
//
//  Created by HARSHID PATEL on 02/08/23.
//

import UIKit

class forgetPage: UIViewController {
    
    @IBOutlet weak var findAccountButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var mobilLb: UILabel!
    
    var change = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        findAccountButton.layer.cornerRadius = 22
    }
    
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        if change == 0{
            mobileTextField.placeholder = "Email"
            searchButton.setTitle("Search by mobile number instead", for: .normal)
            mobilLb.text = "Enter your email address."
            change = 1
        }
        else{
            mobileTextField.placeholder = "Mobile number"
            searchButton.setTitle("Search by email instead", for: .normal)
            mobilLb.text = "Enter your mobile number."
            change = 0
        }
        
    }
    
    @IBAction func backButtonAction(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(identifier: "ViewController") as!
        ViewController
        navigationController?.pushViewController(navigate, animated: true)
    }
    
    
    
}
