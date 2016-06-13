//
//  ViewController.swift
//  Color Finder Tutorial
//
//  Created by Cynthia Whitlatch on 6/13/16.
//  Copyright © 2016 Cynthia Whitlatch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redColor : Float = 127
    var greenColor : Float = 127
    var blueColor : Float = 127

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func redActionSlider(sender: AnyObject) {
        setColors()
    }
    
    @IBAction func greenActionSlider(sender: AnyObject) {
        setColors()
    }
    
    @IBAction func blueActionSlider(sender: AnyObject) {
        setColors()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            changeLabelColor()
    }

    func setColors() {
        redColor = redSlider.value
        greenColor = greenSlider.value
        blueColor = blueSlider.value
        
        changeLabelColor()
        setLabels()
    }
    
    func setLabels() {
        
        var fRedColor = String(format: "%0.0f", (redColor * 255))
        var fGreenColor = String(format: "%0.0f", (greenColor * 255))
        var fBlueColor = String(format: "%0.0f", (blueColor * 255))
        
        redLabel.text = "Red: \(fRedColor)"
        greenLabel.text = "Green: \(fGreenColor)"
        blueLabel.text = "Blue: \(fBlueColor)"
    }
    
    func changeLabelColor() {
        self.view.backgroundColor = UIColor(red: CGFloat(redColor), green: CGFloat(greenColor), blue: CGFloat(blueColor), alpha: 1.0)
    }
    
    
    
    
    
    


}

