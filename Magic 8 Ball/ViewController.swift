//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nick Repaci on 1/30/19.
//  Copyright © 2019 Nicholas P. Repaci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ballFace: UIImageView!
    
    var ballChoice: Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomFaceGenerate()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        randomFaceGenerate()
    }
    
    @IBAction func askButtonPress(_ sender: UIButton) {
        
        randomFaceGenerate()
    }
    
    func randomFaceGenerate() {
        
        ballChoice = Int.random(in: 0 ... 4)
        
        ballFace.image = UIImage(named: ballArray[ballChoice])
    }
    
    


}

