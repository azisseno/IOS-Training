//
//  DetailViewController.swift
//  IOS-Training
//
//  Created by Azis Senoaji Prasetyotomo on 8/23/17.
//  Copyright © 2017 Azis Senoaji Prasetyotomo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var bottomViewConstraint: NSLayoutConstraint!
    
    @IBAction func tapOutsideView(_ sender: Any) {
        
        
        bottomViewConstraint.constant = -200
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(withDuration: 0.5, animations: { 
            self.view.backgroundColor = .clear

        }) { (_) in
            self.dismiss(animated: false, completion: nil)

        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        bottomViewConstraint.constant = 0
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(withDuration: 0.5) { 
            self.view.backgroundColor = UIColor(white: 0, alpha: 0.5)
        }
    }
    

}
