//
//  Finance.swift
//  TheBigTipper
//
//  Created by Sushant Choudhary on 7/21/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import Foundation

extension BigTipper.finance {

    static func amount(min:Int, max:Int) -> String {

        let randomAmount = min + Int(arc4random()) % (max - min)
        return currencyFormatter.stringFromNumber(randomAmount)!

    }

    static func transactionType() -> String {

        let tranType = BigTipper.helper.getRandom(transactiontypeSet)  
        return NSLocalizedString(tranType, bundle: NSBundle(forClass: BigTipper.self), comment: "Transaction Type")
    }

    static func accountName() -> String {
        return BigTipper.helper.getRandom(firstnameSet)
    }


     static func account(length:Int?=nil) -> String {
        let defaultLength = length != nil ? length : 8
        var template:String = ""

        for var i=0; i < defaultLength; i++ {
            template = template + "#"
        }
        return replaceSymbolWithNumber(template)
    }




    static func replaceSymbolWithNumber(tempString:String ,symbol:String?=nil) -> String {

        let defaultSymbol = symbol != nil ? symbol : "#"
        let randomNumber = arc4random_uniform(9)
        return tempString.stringByReplacingOccurrencesOfString(defaultSymbol!, withString: String(randomNumber))
    }

}
