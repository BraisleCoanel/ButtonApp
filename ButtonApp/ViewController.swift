//
//  ViewController.swift
//  ButtonApp
//
//  Created by Martinson, Branton on 10/10/17.
//  Copyright © 2017 Martinson, Branton. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
   
    @IBOutlet weak var firstButton: UIButton!
    @IBAction func firstMethod(_ sender: UIButton)
    {
        if ( firstButton.backgroundColor == .purple)
        {
            firstButton.backgroundColor = .cyan
        }
        else
        {
            firstButton.backgroundColor = .purple
        }
        view.backgroundColor = createRandomColor()
    }
    
    private func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redValue :CGFloat = CGFloat(Double (arc4random_uniform(256)) / 2.55)
        let greenValue :CGFloat = CGFloat(Double (arc4random_uniform(256)) / 255.00)
        let blueValue :CGFloat = CGFloat(Double (arc4random_uniform(256)) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1.0))
        
        
        return newColor
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

