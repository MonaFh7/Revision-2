//
//  TableViewCell.swift
//  Revision-2
//
//  Created by Mobark Alseif on 25/04/1443 AH.
//

import UIKit
protocol CustomDelegate:AnyObject {
    func access(_ cell:TableViewCell)
}
class TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    weak var delegate:CustomDelegate?
    var slectedImage : UIImage? = nil
    
    let emagie : [UIImage] = [UIImage(named: "1")!,UIImage(named: "2")!]

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Initialization code
    }

}
extension TableViewCell : UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        emagie.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellC", for: indexPath) as? CollectionCell
        
        cell?.imageView.image = emagie[indexPath.row]
        return cell ?? UICollectionViewCell()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        slectedImage = emagie[indexPath.row]
        self.delegate?.access(self)
    }
    
    
}
