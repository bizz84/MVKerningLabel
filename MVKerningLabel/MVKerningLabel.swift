//
//  MVKerningLabel.swift
//  MVKerningLabel
//
//  Created by Andrea Bizzotto on 13/03/2015.
//  Copyright (c) 2015 Muse Visions. All rights reserved.
//

import UIKit

@IBDesignable class MVKerningLabel: UILabel {

    @IBInspectable var kerning : CGFloat = 0 {
        
        didSet {
            
            if let text = self.text {
                setAttributedTextWithKerning(text)
            }
        }
    }
    
    private func setAttributedTextWithKerning(text: String) {
        
        let attributedString = NSMutableAttributedString(string: text)
        let boxed = NSNumber(double: Double(kerning))
        let range = NSMakeRange(0, countElements(text))
        attributedString.addAttribute(NSKernAttributeName, value: boxed, range: range)
        self.attributedText = attributedString
    }
    
    func setText(text:NSString) {
        super.text = text
        setAttributedTextWithKerning(text)
    }
}
