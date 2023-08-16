import UIKit

class settingsAndPrivacyPage: UIViewController {

    var name = [["News Feed","Reaction preference","notifications","Navigation bar","language and region","Media","your Time on facebook","Browser","Dark Mode",],["profile locking","profile details","How people find and contact you","posts","Stories","Reels","followers and public contect","Profile and Tagging","Blocking","Active Status",],["Manage your past activity","Device permissions"],["Access your information","Download your information","Transfer a copy of your information","Apps and websites","business integrations","Off-Facebook activity","Learn how to manage your information",],["Terms of service","Privacy policy","Cookies policy","Community Standards","About"]]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension settingsAndPrivacyPage : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = name[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Preferences"
        }
        else if section == 1 {
            return "Audience and visibility"
        }
        else if section == 2 {
            return "your activity"
        }
        else if section == 3 {
            return "your information"
        }
        else {
            return "Community Standards and Legal Policies"
        }
    }
    
    
}
