import UIKit
import LZViewPager

class paginigViewPage: UIViewController,LZViewPagerDelegate,LZViewPagerDataSource {
    
    @IBOutlet weak var viewPager: LZViewPager!
    private var subControllers : [UIViewController] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        viewPagerProertis()
    }
    func viewPagerProertis(){
        viewPager.delegate = self
        viewPager.dataSource = self
        viewPager.hostController = self
        
        let vc1 = UIStoryboard(name: "Main", bundle: nil).self.instantiateViewController(withIdentifier: "homeTopTabBar") as! homeTopTabBar
        
        let vc2 = UIStoryboard(name: "Main", bundle: nil).self.instantiateViewController(withIdentifier: "freindTopTabBar") as! freindTopTabBar
        
        let vc3 = UIStoryboard(name: "Main", bundle: nil).self.instantiateViewController(withIdentifier: "videoTopTabBar") as! videoTopTabBar
        
        let vc4 = UIStoryboard(name: "Main", bundle: nil).self.instantiateViewController(withIdentifier: "marketPlaceTopTabBar") as! marketPlaceTopTabBar
        
        let vc5 = UIStoryboard(name: "Main", bundle: nil).self.instantiateViewController(withIdentifier: "notifiacationsTopTabBar") as! notifiacationsTopTabBar
        
        let vc6 = UIStoryboard(name: "Main", bundle: nil).self.instantiateViewController(withIdentifier: "menuTopTabBar") as! menuTopTabBar
        
        vc1.tabBarItem.image = UIImage(named: "openey")
        vc2.tabBarItem.image = UIImage(named: "openey")
        vc3.title = "VIDEO"
        vc4.title = "MARKETPLACE"
        vc5.title = "NOTIFICATIONS"
        vc6.title = "MENU"
        
        subControllers = [vc1,vc2,vc3,vc4,vc5,vc6]
        viewPager.reload()
    }
    func numberOfItems() -> Int {
        return self.subControllers.count
    }
    
    func controller(at index: Int) -> UIViewController {
        return subControllers[index]
    }
    
    func button(at index: Int) -> UIButton {
        let button = UIButton()
        button.setImage(UIImage(named: "openey"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = .gray
        return button
    }
    func colorForIndicator(at index: Int) -> UIColor {
        return .darkGray
    }
    
}
