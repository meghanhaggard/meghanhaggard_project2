//
//  ViewController.swift
//  Hungry For Apples?
//
//  Created by Meghan Haggard on 10/13/15.
//  Copyright © 2015 Meghan Haggard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeButtonTitle(sender: UIButton) {
        
// declaring random rgb values for input into UIColor initialization function
// types are cast from double (drand48() returns type double) to CGFloat
        let red = CGFloat(drand48() % 255)
        let green = CGFloat(drand48() % 255)
        let blue = CGFloat(drand48() % 255)
        
// using RGB values to set background color of sender (button) to random color
        sender.layer.backgroundColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1.0).CGColor
        
        
    }
    
    @IBAction func buttonTapped(sender: UIButton) {
        changeButtonTitle(sender)
        
    }
    


}

