//
//  ViewController.swift
//  DiceApp
//
//  Created by Harsh Mehta on 22/07/18.
//  Copyright © 2018 Harsh Mehta. All rights reserved.
//

import UIKit
import AudioToolbox //the audio module

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2" , "dice3" , "dice4" , "dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //generates random dice when app is opened
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollingDice(_ sender: UIButton) {
        updateDiceImages()
        playSound()
    }
    
    func updateDiceImages(){
        
        //creates a random number excluding 6 , [0,6]
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        //change the diceimageview outlet to randomized number using array
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    //shake gesture has ended :
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
        playSound()
    }
    func playSound(){
        //select random number cuz note1,note2,note3...note[n]
        let randomNumber = Int(arc4random_uniform(7))
        //create the sound
        if let soundURL = Bundle.main.url(forResource: "note\(randomNumber)", withExtension: ".wav"){
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            //Play
            AudioServicesPlaySystemSound(mySound)
        }
    }
}

