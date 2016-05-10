//
//  ColorSlidersViewController.swift
//  ColorMaker
//
//  Created by Alexander Nelson on 4/10/16.
//  Copyright © 2016 Jetwolfe Labs. All rights reserved.
//

import UIKit

class ColorSlidersViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var blueColorSlider: UISlider!
    @IBOutlet weak var greenColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Set default colorView color to black
        self.redColorSlider.value = 0
        self.blueColorSlider.value = 0
        self.greenColorSlider.value = 0
    }
    
    @IBAction func changeColorComponent(sender: UISlider) {
        
        let rFloat: Float = self.redColorSlider.value
        let gFloat: Float = self.greenColorSlider.value
        let bFloat: Float = self.blueColorSlider.value
        
        let rCGFloat: CGFloat = CGFloat(rFloat)
        let gCGFloat: CGFloat = CGFloat(gFloat)
        let bCGFloat: CGFloat = CGFloat(bFloat)
        
        colorView.backgroundColor = UIColor(red: rCGFloat, green: gCGFloat, blue: bCGFloat, alpha: 1)
        
    }   
}


