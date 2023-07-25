import UIKit

class signupWithEmail: UIViewController {
    
    @IBOutlet weak var emailAddresssTxt: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var signUpWithMobileNumberButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setSignUpWithMobileNumberButton()
        setNextButton()
    }
    func setNextButton(){
        nextButton.layer.cornerRadius = 20
    }
    func setSignUpWithMobileNumberButton(){
        signUpWithMobileNumberButton.layer.cornerRadius = 20
    }
    func backButtonNavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "JoinFacebook") as! JoinFacebook
        navigationController?.popViewController(animated: true)
    }
    func nextButtonNavigation(){
        
    }
    func signupWithMobileNumberButtonNavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "mobileNumber") as! mobileNumber
        navigationController?.popViewController(animated: true)
    }
    @IBAction func backButtonAction(_ sender: Any) {
        backButtonNavigation()
    }
    @IBAction func nextButtonNavigation(_ sender: Any) {
    }
    @IBAction func signupWithMobileNumberAction(_ sender: Any) {
        signupWithMobileNumberButtonNavigation()
    }
}
