//
//  GoCoronaExtensions.swift
//  GoCorona
//
//  Created by Shashank Chandran on 4/30/20.
//  Copyright © 2020 Shashank Chandran. All rights reserved.
//

import Foundation
import UIKit



extension UIView{
    func showBlurLoader(){
        DispatchQueue.main.async {
            let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.extraLight)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = self.bounds
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
            activityIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
            activityIndicator.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            activityIndicator.color = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            activityIndicator.startAnimating()
            blurEffectView.contentView.addSubview(activityIndicator)
            activityIndicator.center = blurEffectView.contentView.center
            self.addSubview(blurEffectView)
        }
    }
    
    func removeBluerLoader(){
        DispatchQueue.main.async {
            self.subviews.flatMap {  $0 as? UIVisualEffectView }.forEach {
                $0.removeFromSuperview()
            }
        }
    }
    
   
    
}
extension Int {
    func withCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }
}

extension Double {
    
    // Formatting double value to k and M
    // 1000 = 1k
    // 1100 = 1.1k
    // 15000 = 15k
    // 115000 = 115k
    // 1000000 = 1m
    func formatPoints() -> String{
        let thousandNum = self/1000
        let millionNum = self/1000000
        if self >= 1000 && self < 1000000{
            if(floor(thousandNum) == thousandNum){
                return ("\(Int(thousandNum))k").replacingOccurrences(of: ".0", with: "")
            }
            return("\(thousandNum.roundTo(places: 1))k").replacingOccurrences(of: ".0", with: "")
        }
        if self > 1000000{
            if(floor(millionNum) == millionNum){
                return("\(Int(thousandNum))k").replacingOccurrences(of: ".0", with: "")
            }
            return ("\(millionNum.roundTo(places: 1))M").replacingOccurrences(of: ".0", with: "")
        }
        else{
            if(floor(self) == self){
                return ("\(Int(self))")
            }
            return ("\(self)")
        }
    }
    
    /// Returns rounded value for passed places
    ///
    /// - parameter places: Pass number of digit for rounded value off after decimal
    ///
    /// - returns: Returns rounded value with passed places
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}


