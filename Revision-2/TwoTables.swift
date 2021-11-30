//
//  TwoTables.swift
//  Revision-2
//
//  Created by Mobark Alseif on 25/04/1443 AH.
//

import UIKit

class TwoTables: UIViewController {

    @IBOutlet weak var firstTable: UITableView!
    @IBOutlet weak var secondTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTable.delegate = self
        secondTable.delegate = self
        firstTable.dataSource = self
        secondTable.dataSource = self
        // Do any additional setup after loading the view.
    }


}
extension TwoTables : UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == firstTable {
            return 2
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == firstTable {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "FirstTable"
            return cell
            
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "secondTable"
            return cell
        }
    }
    
    
    
    
    
}
