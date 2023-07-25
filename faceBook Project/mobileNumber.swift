import UIKit

class mobileNumber: UIViewController {
    
    @IBOutlet weak var mobilenumbertxt: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var signupWithEmailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNextButton()
        setSignUpWithEmailButton()
    }
    func setNextButton(){
        nextButton.layer.cornerRadius = 20
    }
    func setSignUpWithEmailButton(){
        signupWithEmailButton.layer.cornerRadius = 20
    }
    func backButtonNavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "JoinFacebook") as! JoinFacebook
        navigationController?.popViewController(animated: true)
    }
    func nextButtonNavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "signupWithEmail") as! signupWithEmail
        navigationController?.pushViewController(navigation, animated: true)
    }
    func signUpWithEmailNavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "signupWithEmail") as! signupWithEmail
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        backButtonNavigation()
    }
    
    @IBAction func nextButtonAction(_ sender: Any) {
        nextButtonNavigation()
    }
    
    @IBAction func signUpWithEmailAction(_ sender: Any) {
        signUpWithEmailNavigation()
    }
}
