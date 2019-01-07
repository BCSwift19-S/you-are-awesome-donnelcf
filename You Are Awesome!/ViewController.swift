//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Christopher Donnelly on 1/5/19.
//  Copyright © 2019 Chris Donnelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //linked label to code
    @IBOutlet weak var messageLabel: UILabel!
    
    //Code below executes when the app view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view loaded!")

    }
    //linked button to code
    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You are Awesome!"
        messageLabel.textColor = UIColor.magenta
        
        
    }
    @IBAction func showAnotherMessage(_ sender: UIButton) {
        messageLabel.text = "You are Great!"
        messageLabel.textColor = UIColor.blue
    }
}

