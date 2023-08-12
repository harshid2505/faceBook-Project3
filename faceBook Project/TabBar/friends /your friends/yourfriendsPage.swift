import UIKit

class yourfriendsPage: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var yourfriendsTableview: UITableView!
    var name = ["Jenis Navadiya","Harshid Vaddoriya","Yagnik Kalathiya","Monil Sojitra","Vicky Katariya","Niraj Nakarani","Harsh Rathod","Rushit Navadiya","Akhil Navadiya","Rushit Maniya","Deep Mangukiya"]
    var filterData = ["Jenis Navadiya","Harshid Vaddoriya","Yagnik Kalathiya","Monil Sojitra","Vicky Katariya","Niraj Nakarani","Harsh Rathod","Ruhsit Navadiya","Akhil Navadiya","Rushit Maniya","Deep Mangukiya"]
    var mutualFreinds = ["2 mutual friends","1 mutual friends","5 mutual friends","7 mutual friends","12 mutual friends","10 mutual friends","4 mutual friends","11 mutual friends","5 mutual friends","2 mutual friends","6 mutual friends"]
    var frdDp = [UIImage(named: "jenis"),UIImage(named: "harshid"),UIImage(named: "yagnik"),UIImage(named: "monil"),UIImage(named: "vivek"),UIImage(named: "niraj"),UIImage(named: "harsh"),UIImage(named: "rushit n"),UIImage(named: "akhil"),UIImage(named: "rushit m"),UIImage(named: "deep")]
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.layer.cornerRadius = 15
        searchBar.delegate = self
          yourfriendsTableview.reloadData()
    }

    @IBAction func backbuttonActiion(_ sender: Any) {
        let navigatiion = storyboard?.instantiateViewController(identifier: "FriendsPage") as! FriendsPage
        navigationController?.popViewController(animated: true)
    }
    @IBAction func searchButtonAction(_ sender: Any) {
        let navigatiion = storyboard?.instantiateViewController(identifier: "findFriendsPage") as! findFriendsPage
        navigationController?.pushViewController(navigatiion, animated: true)
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text == ""{
            name = filterData
        }
        else{
            name = filterData.filter{ $0.contains(searchText)}
            print(name)
        }
        
        yourfriendsTableview.reloadData()
    }
    func searchBar(_ searchBar: UISearchBar) {
        searchBar.text = ""
        filterData = name
        yourfriendsTableview.reloadData()
        searchBar.resignFirstResponder()
    }
}



// TABEL VIEW

extension yourfriendsPage : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = yourfriendsTableview.dequeueReusableCell(withIdentifier: "yourfriendsCell") as! searchfriendsTableViewCell
        cell.searchFrdImg.image = frdDp[indexPath.row]
        cell.nameLabel.text = "\(name[indexPath.row])"
        cell.mutualfrdLb.text = "\(mutualFreinds[indexPath.row])"
        cell.searchFrdImg.layer.cornerRadius = cell.searchFrdImg.frame.width/2
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
