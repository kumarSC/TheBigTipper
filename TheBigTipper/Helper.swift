//
//  Helper.swift
//  TheBigTipper
//
//  Created by Sushant Choudhary on 7/21/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import Foundation

public extension BigTipper {

    static var localeModule:NSBundle = NSBundle(forClass: BigTipper.self)

    struct helper {

        static func createTransaction() ->  [String: AnyObject] {

            return [

                "amount" : BigTipper.finance.amount(1000, max:10000),
                "date" : NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .ShortStyle),
                "business" : BigTipper.company.companyName(),
                "name" : BigTipper.finance.accountName(),
                "type" : BigTipper.finance.transactionType(),
                "account" : BigTipper.finance.account()
            ]
        }


        static func createCard() -> [String: AnyObject] {

            return [

                "name" : BigTipper.name.defaultName,
                "business" : BigTipper.company.companyName(),
                "phone" : BigTipper.company.phoneNumber(),
                "email" : BigTipper.internet.email()

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


        static func setLanguage(lang:String?=nil) -> (){
            //         let localePath = NSBundle(forClass: BigTipper.self).pathForResource(lang, ofType: "lproj")

            if lang != nil {
                let url = NSBundle(forClass: BigTipper.self).URLForResource(lang, withExtension: "lproj")
                localeModule = NSBundle(URL: url!)!
            }
            else {
                let url = NSBundle(forClass: BigTipper.self).URLForResource("en", withExtension: "lproj")
                localeModule = NSBundle(URL: url!)!

            }

            
        }

        static func randomAlphaNum (len : Int) -> NSString {

            let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

            let randomString : NSMutableString = NSMutableString(capacity: len)

            for (var i=0; i < len; i++){
                let length = UInt32 (letters.length)
                let rand = arc4random_uniform(length)
                randomString.appendFormat("%C", letters.characterAtIndex(Int(rand)))
            }

            return randomString
        }
        




    }


}