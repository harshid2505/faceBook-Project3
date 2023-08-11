//
//  HomePage.swift
//  faceBook Project
//
//  Created by HARSHID PATEL on 10/08/23.
//

import UIKit

class HomePage: UIViewController {

    @IBOutlet weak var homeTableView: UITableView!
    
    var dp = [UIImage(named: "dp")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func postButtonAction(_ sender: UIButton) {
        let navigate = storyboard?.instantiateViewController(identifier: "postPop") as! postPop
        present(navigate, animated: true)
    }
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        
    }
    
    @IBAction func messageButtonAction(_ sender: UIButton) {
        
    }
    
}

//TABLE VIEW

extension HomePage:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: "homeCell") as! homeTableViewCell
        cell.dpImag.image = dp[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
