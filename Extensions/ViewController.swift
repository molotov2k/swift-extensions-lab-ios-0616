//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fullName = "Max Tkach"
        let phoneNumber = 8675309
        
        let unicornPhrase = "My 🦄 is awesome"
        
        unicornLevelLabel.text = unicornPhrase.unicornLevel
        
        print(fullName.pigLatin)
        print(fullName.points)
        
        print(phoneNumber.halved)
        print(phoneNumber.squared)
        
    }
}


