//
//  ViewController.swift
//  NavigationBarMenu
//
//  Created by X901 on 5/8/17.
//  Copyright © 2017 Basil Baragabah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuTop: NSLayoutConstraint!
    
    @IBOutlet weak var menuView: UIView!
    
    var check = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuTop.constant = -65
        
        let button =  UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        button.setTitle("Menu", for: .normal)
        button.addTarget(self, action: #selector(self.menuButton), for: .touchUpInside)
        self.navigationItem.titleView = button

        
        menuView.layer.borderWidth = 0.5
        menuView.layer.borderColor = UIColor.gray.cgColor
        
        
    }

    func menuButton(button: UIButton) {
     
        if check == true {
        
        UIView.animate(withDuration: 0.5, animations: {
            self.menuTop.constant = 0
            self.view.layer.layoutIfNeeded()

            self.check = false
            
        })
        
        }else {
          
            UIView.animate(withDuration: 0.5, animations: {
                self.menuTop.constant = -65
                self.view.layer.layoutIfNeeded()
               
                self.check = true

                
                
            })
            
            
        }
        
        
        
    }
  

    

}

