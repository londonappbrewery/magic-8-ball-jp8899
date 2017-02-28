//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by pc-mac-sierra on 09/01/2017.
//  Copyright © 2017 textdater. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

let ballArray = ["ball1","ball2","ball3","ball4","ball5",];
   var randomBallNumber : Int = 0
    @IBOutlet weak var imageView: UIImageView!
 
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        randomBallNumber = Int(arc4random_uniform(4))
        imageView.image = UIImage(named: ballArray[randomBallNumber])
        
  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}

