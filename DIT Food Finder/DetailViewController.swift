//
//  DetailViewController.swift
//  DIT Food Finder
//
//  Created by D7703_16 on 2018. 5. 30..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailAddress: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailType: UILabel!
    
    var cellAddress = ""
    var cellImages = ""
    var cellType = ""
    var cellName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = cellName
        // Do any additional setup after loading the view.
        detailAddress.text = cellAddress
        detailImageView.image = UIImage(named : cellImages)
        detailType.text = cellType

    }


}
