//
//  ViewController.swift
//  slide menu test
//
//  Created by 黃毓皓 on 2017/5/24.
//  Copyright © 2017年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var menuView: UIView!
    var showmenu = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
    }
    @IBAction func openMenu(_ sender: UIBarButtonItem) {
        if showmenu{
            leadingConstraint.constant = -150
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
                
            })
        }else{
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: { 
                self.view.layoutIfNeeded()
            
            })
            
        }
        showmenu = !showmenu
        
    }
    
    
   

}

