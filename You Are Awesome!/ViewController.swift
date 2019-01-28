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
    @IBOutlet weak var soundSwitch: UISwitch!
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
    
    func he() {
    print("hello")
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        
        if let sound = NSDataAsset(name: soundName){
            
            //check for sound file
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                //if not a valid audio file, throw error
                print("ERROR: data in sound\(soundIndex) could not be played as sound")
            }
        } else {
            print("ERROR: File sound\(soundIndex) did not load")
        }
        
    }

    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundIndex != -1 {
                     awesomePlayer.stop()
        }
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {

        
        let messages = ["You are Fantastic!",
                        "You are Great!",
                        "You are Amazing!",
                        "You are Fabulous!",
                        "I can't wait to download your app!",
                        "You are tremendous!"]
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //show image
        
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
//        if soundSwitch.isOn == true
        if soundSwitch.isOn {
            //play sound
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
            
            let soundName = "sound\(soundIndex)"
            
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
    }
    
    



}
