import UIKit

class saveInfo: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var notNowButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
setNextButton()
    }
    func setNextButton(){
        nextButton.layer.cornerRadius = 20
    }
    func nextButtonnavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "saveInfo") as! saveInfo
        navigationController?.popViewController(animated: true)
    }
    func alreadyHaveAnAccount(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.popViewController(animated: true)
    }
    @IBAction func nextButtonAction(_ sender: Any) {
        nextButtonnavigation()
    }
    @IBAction func notNowButtonAction(_ sender: Any) {
    }
    @IBAction func alreadyButtonAction(_ sender: Any) {
        alreadyHaveAnAccount()
    }
}
