//
//  HexHelper.swift
//  TheBigTipper
//
//  Created by Sushant Choudhary on 7/23/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }

    static func getHex() {
    let colors = CGColorGetComponents( UIColor.grayColor().CGColor )
    let hexCol:String = NSString(format: "#%02x%02x%02x", Int(colors[0] * 255.0), Int(colors[1] * 255.0), Int(colors[2] * 255.0)) as String
        print(hexCol)
}

}