//
//  BlinkingLabel.swift
//  Pods
//
//  Created by Dhekra Rouatbi on 10/07/2017.
//
//

import UIKit

open class BlinkingLabel : UILabel {
    
    /**
     Tells the label to start blinking.
     */
    open func startBlinking() {
        let options : UIViewAnimationOptions = .Repeat | .Autoreverse
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    /**
     Tells the label to stop blinking.
     */
    open func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
