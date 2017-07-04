//
//  ViewController.swift
//  Sheldon Whip
//
//  Created by Ricardo Rodriguez Gonzalez on 8/1/17.
//  Copyright © 2017 Richionline. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var playerWhip: AVAudioPlayer?
    var playerKitty: AVAudioPlayer?
    
    func playSoundWhip() {
        let url = Bundle.main.url(forResource: "sheldon_whip", withExtension: "mp3")!
        
        do {
            playerWhip = try AVAudioPlayer(contentsOf: url)
            guard let playerWhip = playerWhip else { return }
            
            playerWhip.prepareToPlay()
            print("ROD: It's going to sound the whip\n")
            playerWhip.play()
        } catch let error {
            print("ROD_ERROR: \(error.localizedDescription)")
        }
    }

    func playSoundKitty() {
        let url = Bundle.main.url(forResource: "dulce_gatito", withExtension: "mp3")!
        
        do {
            playerKitty = try AVAudioPlayer(contentsOf: url)
            guard let playerKitty = playerKitty else { return }
            
            playerKitty.prepareToPlay()
            print("ROD: It's going to sound Kitty song\n")
            playerKitty.play()
        } catch let error {
            print("ROD_ERROR: \(error.localizedDescription)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func whipButton(_ sender: UIButton) {
        print("ROD: Inside function whipButton\n")
        playSoundWhip()
    }

    @IBAction func kittyButton(_ sender: UIButton) {
        print("ROD: Inside function kittyButton\n")
        playSoundKitty()
    }
}

