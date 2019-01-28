//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Christopher Donnelly on 1/5/19.
//  Copyright © 2019 Chris Donnelly. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //linked label to code
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    
    // create index to exist outside of the function (we can remember value even as we forget function showMessagePressed
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    var soundIndex = -1
    let numberOfSounds = 3
    
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
        
        //show message
        
        // declare but do not initalize newIndex
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 1..<messages.count)
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        //show image
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //play sound
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        if let sound = NSDataAsset(name: "sound\(soundIndex)"){
            
            //check for sound file
            do {
            try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                //if not a valid audio file, throw error
                print("ERROR: data in sound\(soundIndex) could not be played as sound")
            }
        } else {
            print("ERROR: File sound\(soundIndex) did not load")
        }
    
}


}
