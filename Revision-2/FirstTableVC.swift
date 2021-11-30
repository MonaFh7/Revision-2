//
//  FirstTableVC.swift
//  Revision-2
//
//  Created by Mobark Alseif on 25/04/1443 AH.
//

import UIKit

class FirstTableVC: UITableViewController {
    
    var selectedImage : UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.delegate = self
        
        return cell 
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? SecondVC
        vc?.imageSelected = selectedImage
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}

extension FirstTableVC : CustomDelegate {
    func access(_ cell: TableViewCell) {
        selectedImage = cell.slectedImage
        performSegue(withIdentifier: "toNext", sender: nil)
    }
}
