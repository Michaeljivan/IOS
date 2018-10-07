//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by Michael Jivan on 10/2/18.
//  Copyright © 2018 Michael Jivan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballOutput: UIImageView!
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var ballSelection : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateMagicBall()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateMagicBall()
    }
    
    @IBAction func shakeBall(_ sender: Any) {
        updateMagicBall()
    }
    
    func updateMagicBall(){
        ballSelection = Int.random(in: 0 ... 4) //lower bound 0 upper bound 5
        ballOutput.image = UIImage(named: ballArray[ballSelection]) //random answer
    }
}
