//
//  ViewController.swift
//  MVKerningLabel
//
//  Created by Andrea Bizzotto on 13/03/2015.
//  Copyright (c) 2015 Muse Visions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loremIpsumLabel : MVKerningLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderValueChanged(sender: UISlider) {
    
        loremIpsumLabel.kerning = CGFloat(sender.value)
    }
}

