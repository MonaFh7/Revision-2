//
//  SecondVC.swift
//  Revision-2
//
//  Created by Mobark Alseif on 25/04/1443 AH.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var imageSelected: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = imageSelected
    }


}

