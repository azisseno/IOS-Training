//
//  ViewController.swift
//  IOS-Training
//
//  Created by Azis Senoaji Prasetyotomo on 8/23/17.
//  Copyright © 2017 Azis Senoaji Prasetyotomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var topBlueSquareConstraint: NSLayoutConstraint!

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        topBlueSquareConstraint.constant = 0
        UIView.animate(withDuration: 3, animations: {
            self.view.layoutIfNeeded()

        }, completion: { (_) in
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

