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
    // create index to exist outside of the function (we can remember value even as we forget function showMessagePressed
    var index = 0
    
    //Code below executes when the app view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view loaded!")

    }

    @IBAction func showMessagePressed(_ sender: UIButton) {

        
        let messages = ["You are Fantastic!",
                        "You are Great!",
                        "You are Amazing!",
                        "You are Fabulous!",
                        "I can't wait to download your app!",
                        "You are tremendous!"]
        
        var newIndex = -1
        repeat {
            newIndex = Int.random(in: 1..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
   }
    
}


