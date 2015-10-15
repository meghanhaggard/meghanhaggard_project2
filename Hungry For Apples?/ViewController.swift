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
    
    // called by IBAction, this function changes the color and text on the button
    func changeButton(sender: UIButton) {
        
        // declaring random rgb values for input into UIColor initialization function
        // types are cast from double (drand48() returns type double) to CGFloat in order
        // to use them in our UIColor initialization 
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        
        // setting button title color to white
        sender.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        // using RGB values to set background color of sender (button) to random color
        sender.layer.backgroundColor = UIColor.init(red: red, green: green, blue: blue, alpha: 0.5).CGColor
        
        // create NSDictionary from facts.plist
        var data: Dictionary<String, String>? = {
            guard let path = NSBundle.mainBundle().pathForResource("facts", ofType: "plist") else {
                print("Invalid path for plist")
                return nil
            }
            return NSDictionary(contentsOfFile: path) as? Dictionary<String, String>
        }()
        
        // storing our facts from the plist into strings
        let fact1 = data?["fact1"]
        let fact2 = data?["fact2"]
        let fact3 = data?["fact3"]
        let fact4 = data?["fact4"]
        let fact5 = data?["fact5"]
        
        // generating random number to display corresponding fact
        let factnumber = (arc4random() % 5) + 1
        
        // displaying corresponging fact
        if factnumber == 1 {
            sender.setTitle(fact1, forState: UIControlState.Normal)
        }
        else if factnumber == 2 {
            sender.setTitle(fact2, forState: UIControlState.Normal)
        }
        else if factnumber == 3 {
            sender.setTitle(fact3, forState: UIControlState.Normal)
        }
        else if factnumber == 4 {
            sender.setTitle(fact4, forState: UIControlState.Normal)
        }
        else {
            sender.setTitle(fact5, forState: UIControlState.Normal)
        }
    }
    
    // what happens when we tap the button?
    @IBAction func buttonTapped(sender: UIButton) {
        changeButton(sender)
    }
}

