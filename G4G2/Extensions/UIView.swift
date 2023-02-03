//
//  UIView.swift
//  G4G2
//
//  Created by Abai Kush on 3/2/23.
//

import UIKit

extension UIView {
    
    func shake(count: Float = 4, for duration: TimeInterval = 0.5,
               withTranslation translation: CGFloat = 5) {
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.repeatCount = count
        animation.duration = duration / TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: -translation, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: translation, y: self.center.y))
        layer.add(animation, forKey: "shake")
    }
}
