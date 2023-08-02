import UIKit

class createPassword: UIViewController {
    
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var showHideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNextButton()
        showHideButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
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
    
    @IBAction func alreadyHaveAnAccountButtonAction(_ sender: Any) {
        alreadyHaveAnAccount()
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        backButtonNavigation()
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "saveInfo") as! saveInfo
        navigationController?.pushViewController(navigation, animated: true)
    }
}
