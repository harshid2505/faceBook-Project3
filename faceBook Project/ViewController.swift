import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseFirestore
import FirebaseCore

class ViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var createNewButton: UIButton!
    
    var refa: Firestore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLogInButton()
        refa = Firestore.firestore()
    }
    
    func setLogInButton(){
        logInButton.layer.cornerRadius = 22
        createNewButton.layer.borderWidth = 1.5
        createNewButton.layer.borderColor = UIColor.tintColor.cgColor
        createNewButton.layer.cornerRadius = 18
    }
    
    @IBAction func crateNewButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "JoinFacebook") as! JoinFacebook
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBAction func forgotPasswordButtonActio(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "forgetPage") as! forgetPage
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}

