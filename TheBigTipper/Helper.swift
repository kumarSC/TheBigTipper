//
//  Helper.swift
//  TheBigTipper
//
//  Created by Sushant Choudhary on 7/21/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import Foundation

public extension BigTipper {

    struct helper {

        static func createTransaction() ->  [String: AnyObject] {

            return [

                "amount" : BigTipper.finance.amount(1000, max:10000),
                "date" : NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .ShortStyle),
                "business" : BigTipper.company.companyName(),
                "name" : BigTipper.finance.accountName(),
                "type" : getRandom(transactiontypeSet),
                "account" : BigTipper.finance.account()
            ]
        }


        static func createCard() -> [String: AnyObject] {

            return [

                "name" : BigTipper.name.firstname(),
                "business" : BigTipper.company.companyName(),
                "phone" : BigTipper.company.phoneNumber()

            ]

        }



        static func getRandom(setName:Set<String>) -> String {
            var tipName = String()
            let randomNumber = arc4random_uniform(UInt32(setName.count))
            var i:UInt32 = 0
            for name in setName {

                if i == randomNumber {
                    tipName = name
                    break
                }
                else {
                    i = i+1
                }
            }
            return tipName
            
        }



    }


}