import UIKit

class ShopPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var shopButtonCollectionview: buttonCollectionViewCell!
    @IBOutlet weak var shopProductCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    


}



