//
//  ViewController.swift
//  OHCircleSegue
//
//  Created by Øyvind Hauge on 10/01/16.
//  Copyright © 2016 Øyvind Hauge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var fwdButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fwdButton?.layer.cornerRadius = (fwdButton?.frame.size.width)!/2
        fwdButton?.layer.masksToBounds = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.isKindOfClass(OHCircleSegue) && sender === fwdButton {
            (segue as! OHCircleSegue).circleOrigin = (fwdButton?.center)!
        }
    }
    
    @IBAction func unwindToController1(segue : UIStoryboardSegue) {
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}