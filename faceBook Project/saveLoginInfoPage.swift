import UIKit

class saveLoginInfoPage: UIViewController {
    
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var notNowbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setSaveButton()
        setNotNowButton()
    }
    func setSaveButton(){
        saveButton.layer.cornerRadius = 20
    }
    func setNotNowButton(){
        notNowbutton.layer.cornerRadius = 20
        notNowbutton.layer.borderWidth = 1
        notNowbutton.layer.borderColor = UIColor.gray.cgColor
    }
    func SaveButtonnavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "TermsAndCondition") as! TermsAndCondition
        navigationController?.popViewController(animated: true)
    }
    @IBAction func backButtonAction(_ sender: Any) {
    }
    @IBAction func saveButtonAction(_ sender: Any) {
    }
    @IBAction func notNowButtonAction(_ sender: Any) {
    }
    
}
