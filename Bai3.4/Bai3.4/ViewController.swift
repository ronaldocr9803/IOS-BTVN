//
//  ViewController.swift
//  Bai3.4
//
//  Created by APPLE on 11/29/1 R.
//  Copyright © 1 Reiwa APPLE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource=self
        self.tblView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        self.tblView.register(UINib(nibName: "ImageCell", bundle: nil), forCellReuseIdentifier: "ImageCell")
        
        
       
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell

            cell.lbText.text = "khhfjsdfsdbfsdbfsdbfhbsdhjbsjhdbjhsdbjhsdbcjhsbcjhssdbcbhkhhfjsdfsdbfsdbfsdbfhbsdhjbsjhdbjhsdbjhsdbcjhsbcjhssdbcbhkhhfjsdfsdbfsdbfsdbfhbsdhjbsjhdbjhsdbjhsdbcjhsbcjhssdbcbhkhhfjsdfsdbfsdbfsdbfhbsdhjbsjhdbjhsdbjhsdbcjhsbcjhssdbcbh"
            return cell
        }  else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell
            cell.heightImgView.constant = 0
            cell.imgView.isHidden = true
            cell.lbText.text = "hihihhhihihihihihi"
           
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath) as! ImageCell
            cell.heightImgView.constant = 150
            cell.imgView.isHidden = false
            cell.lbText.text = "hihihhhihihihihihi"
            
            return cell
        }
        
        
    }
}
