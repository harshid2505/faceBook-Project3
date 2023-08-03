import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase
import FirebaseFirestore

class createPassword: UIViewController {
    
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var showHideButton: UIButton!
    
    var refa: Firestore!
    var email = String()
    var uid = Auth.auth().currentUser?.uid
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNextButton()
        showHideButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        refa = Firestore.firestore()
    }
    
    @objc func togglePasswordVisibility() {
        passwordTxt.isSecureTextEntry.toggle()
        
        if passwordTxt.isSecureTextEntry {
            showHideButton.setImage(UIImage(named: "closeey"), for: .normal)
        } else {
            showHideButton.setImage(UIImage(named: "openey"), for: .normal)
        }
    }
    
    func setNextButton(){
        nextButton.layer.cornerRadius = 22
    }
    
    func backButtonNavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "signupWithEmail") as! signupWithEmail
        navigationController?.popViewController(animated: true)
    }
    
    func alreadyHaveAnAccount(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.popViewController(animated: true)
    }
    
    func fireStore(){
        Auth.auth().createUser(withEmail: email, password: passwordTxt.text!){authDataResult, error in
            print(authDataResult,error?.localizedDescription)
        }
        
        refa.collection("User").document(uid!).setData(["Email ID": email,"Password": passwordTxt.text!])
        
    }
    
    @IBAction func alreadyHaveAnAccountButtonAction(_ sender: Any) {
        alreadyHaveAnAccount()
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        backButtonNavigation()
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "saveInfo") as! saveInfo
        navigationController?.pushViewController(navigation, animated: true)
        fireStore()
    }
}
