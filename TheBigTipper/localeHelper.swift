//
//  localeHelper.swift
//  TheBigTipper
//
//  Created by Sushant Choudhary on 7/22/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import Foundation

var numberFormatter: NSNumberFormatter {
    let formatter = NSNumberFormatter()
    formatter.numberStyle = .DecimalStyle
    return formatter
}

var currencyFormatter: NSNumberFormatter {
    let formatter = NSNumberFormatter()
    formatter.numberStyle = .CurrencyStyle
    return formatter
}

var dateFormatter: NSDateFormatter {
    let formatter = NSDateFormatter()
    formatter.dateStyle = .MediumStyle
    formatter.timeStyle = .MediumStyle
    return formatter
}
