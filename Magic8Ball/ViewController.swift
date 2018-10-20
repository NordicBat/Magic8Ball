//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Gabriel de Freitas Meira on 18/10/2018.
//  Copyright © 2018 gfmeira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomNumBall: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askPressed(_ sender: UIButton) {
        
        randomBall()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomBall()
    }

//    shake the phone and call the func
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        randomBall()
    }
    
//    randomly sets the image in the imageview
    func randomBall(){
        randomNumBall = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomNumBall])
    }

}

