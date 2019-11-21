//
//  thangController.swift
//  BTVN2.1
//
//  Created by APPLE on 11/21/1 R.
//  Copyright © 1 Reiwa APPLE. All rights reserved.
//

import UIKit
import WebKit


class thangController: UIViewController
{
    
    
    @IBOutlet weak var heightLblDemo: NSLayoutConstraint!
    @IBOutlet weak var lblDemo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func onClickBtn(_ sender: Any) {
        lblDemo.backgroundColor=UIColor.blue
        heightLblDemo.constant=heightLblDemo.constant * 2
        self.view.layoutIfNeeded()
    }
}
