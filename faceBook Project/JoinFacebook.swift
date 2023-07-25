import UIKit

class JoinFacebook: UIViewController {

    @IBOutlet weak var getStartedButton: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        setGetStartedButton()
    }
    func setGetStartedButton(){
        getStartedButton.layer.cornerRadius = 25
    }

    @IBAction func backButtonAction(_ sender: Any) {
            let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            navigationController?.popViewController(animated: true)
    }
    @IBAction func getStartedButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "createAccount") as! createAccount
        navigationController?.pushViewController(navigation, animated: true)
        
    }
    @IBAction func AlreadyHaveAnAccountButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.popViewController(animated: true)
    }
}
