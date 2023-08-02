//
//  genderPage.swift
//  faceBook Project
//
//  Created by HARSHID PATEL on 02/08/23.
//

import UIKit

class genderPage: UIViewController {
    
    @IBOutlet weak var genderTableView: UITableView!
    @IBOutlet weak var nextButton: UIButton!
    
    var genderArr = ["Female","Male","Another Gender"]
    var selectCell = -1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        genderTableView.layer.cornerRadius = 10
        nextButton.layer.cornerRadius = 22

        // Do any additional setup after loading the view.
    }
    func nextButtonNavigation(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "mobileNumber") as! mobileNumber
        navigationController?.pushViewController(navigation, animated: true)
    }
    @IBAction func nextButtonAction(_ sender: UIButton) {
        nextButtonNavigation()
    }
    
    @IBAction func alreadyAccountButtonAction(_ sender: UIButton) {
        
    }
    
}

//TABLE VIEW

extension genderPage:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genderArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = genderTableView.dequeueReusableCell(withIdentifier: "genderCell") as! genderTableViewCell
        cell.genderLable.text = genderArr[indexPath.row]
        
        if selectCell == indexPath.row{
            cell.redioButton.image = UIImage(systemName: "circle.inset.filled")
        }
        else{
            cell.redioButton.image = UIImage(systemName: "circle")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectCell = indexPath.row
        genderTableView.reloadData()
    }
    
}

