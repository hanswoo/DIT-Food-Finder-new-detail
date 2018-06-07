//
//  DetailViewController.swift
//  DIT Food Finder
//
//  Created by D7703_16 on 2018. 5. 30..
//  Copyright © 2018년 hsw. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        cell.textLabel?.text = cellAddress
        
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = "주소 : " + cellAddress
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = "타입 : " + cellType
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = "전화번호 : " + cellTell
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
            cell.textLabel?.text = "메뉴 : " + cellMenu
            return cell
        }
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    

    
    
    @IBOutlet weak var detailImageView: UIImageView!

    @IBOutlet weak var detailTableView: UITableView!
    
    var cellAddress = ""
    var cellImages = ""
    var cellType = ""
    var cellName = ""
    var cellMenu = ""
    var cellTell = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // delegate와 UIViewController와 연결
        detailTableView.delegate = self
        detailTableView.dataSource = self
        self.title = cellName
        // Do any additional setup after loading the view.
        //detailAddress.text = cellAddress
        detailImageView.image = UIImage(named : cellImages)
        //detailType.text = cellType

    
}

}





