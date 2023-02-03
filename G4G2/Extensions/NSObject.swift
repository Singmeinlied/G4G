//
//  NSObject.swift
//  G4G2
//
//  Created by Abai Kush on 3/2/23.
//

import UIKit

extension NSObject{
    var screenHeight: CGFloat{
        return UIScreen.main.bounds.height
    }
    
    var screenWidth: CGFloat{
        return UIScreen.main.bounds.width
    }
    
    func computedHeight(_ height: CGFloat) -> CGFloat{
        return screenHeight * height / 852
    }
    
    func computedWidth(_ width: CGFloat) -> CGFloat{
        return screenWidth * width / 392
    }
}
