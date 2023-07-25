import UIKit

class createAccount: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setNextButton()
    }
    
    func setNextButton(){
        nextButton.layer.cornerRadius = 20
    }
    func backButtonNavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "JoinFacebook") as! JoinFacebook
        navigationController?.popViewController(animated: true)
    }
    func nextButtonNavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "dateOfBirth") as! dateOfBirth
        navigationController?.pushViewController(navigation, animated: true)
    }
    func alreadyHaveAnAccount(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        nextButtonNavigation()
    }
    
    @IBAction func AlreadyHaveAnAccountButtonAction(_ sender: Any) {
        alreadyHaveAnAccount()
    }
    @IBAction func backButtonAction(_ sender: Any) {
        backButtonNavigation()
    }
}
