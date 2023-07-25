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
        nextButton.layer.cornerRadius = 25
    }
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func AlreadyHaveAnAccountButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.pushViewController(navigation, animated: true)
    }
    @IBAction func backButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "JoinFacebook") as! JoinFacebook
        navigationController?.popViewController(animated: true)
    }
}