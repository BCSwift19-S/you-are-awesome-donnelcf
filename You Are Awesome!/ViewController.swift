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
    // create index
//    var index = 0
    
    //Code below executes when the app view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view loaded!")

    }
    //linked button to code
    @IBAction func showAnotherMessage(_ sender: UIButton) {
        messageLabel.text = "You are Great!"
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You are Amazing!"
        
//        let messages = ["You are Fantastic!!", "You are Great!", "You are Amazing"]
//
//        messageLabel.text = messages[index]
//        if index < messages.count-1 {
//            index += 1
//        } else if index == messages.count-1 {
//            index = 0
//        }
        
        
//        if messageLabel.text == messages[0] {
//            messageLabel.text = messages[1]
//        } else if messageLabel.text == messages[1] {
//            messageLabel.text = messages[2]
//        } else {messageLabel.text = messages[0]
//
//        }
        

//        let message1 = "You are Awesome!"
//        let message2 = "You are Great!"
//        let message3 = "You are Amazing!"
//
//        if messageLabel.text == message1 {
//           messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//           messageLabel.text = message3
//        } else {
//           messageLabel.text = message1
//        }
   }
    
}


