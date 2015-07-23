//
//  Business.swift
//  TheBigTipper
//
//  Created by Sushant Choudhary on 7/22/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import Foundation

extension BigTipper.company {

    static func companyName() -> String {
        return BigTipper.helper.getRandom(companyNameSet)
    }

    static func phoneNumber() -> String {
        let min:Int = 1234567
        let max:Int = 9999999
        let randomAmount = min + Int(arc4random()) % (max - min)
        return String(randomAmount)

        
    }

}