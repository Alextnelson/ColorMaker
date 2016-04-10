//
//  ViewController.swift
//  ColorMaker
//
//  Created by Alexander Nelson on 4/10/16.
//  Copyright © 2016 Jetwolfe Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func changeColorComponent(sender: UISlider) {

        let rFloat: Float = self.redSlider.value
        let gFloat: Float = self.greenSlider.value
        let bFloat: Float = self.blueSlider.value

        let rCGFloat: CGFloat = CGFloat(rFloat)
        let gCGFloat: CGFloat = CGFloat(gFloat)
        let bCGFloat: CGFloat = CGFloat(bFloat)

        colorView.backgroundColor = UIColor(red: rCGFloat, green: gCGFloat, blue: bCGFloat, alpha: 1)

    }
}

