//
//  Helper.swift
//  TheBigTipper
//
//  Created by Sushant Choudhary on 7/21/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import Foundation

var languageBundle: NSBundle?

public extension BigTipper {

    static var localeModule:NSBundle = NSBundle(forClass: BigTipper.self)

    public struct helper {

        public static func createTransaction() ->  [String: AnyObject] {

            return [

                "amount" : BigTipper.finance.amount(1000, max:10000),
                "date" : NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .ShortStyle),
                "business" : BigTipper.company.companyName(),
                "name" : BigTipper.finance.accountName(),
                "type" : BigTipper.finance.transactionType(),
                "account" : BigTipper.finance.account()
            ]
        }


        public static func createCard() -> [String: AnyObject] {

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


        public static func setLanguage(lang:String?=nil) -> (){
            //         let localePath = NSBundle(forClass: BigTipper.self).pathForResource(lang, ofType: "lproj")

            if  lang != nil {
                let url = NSBundle(forClass: BigTipper.self).URLForResource(lang, withExtension: "lproj")
                localeModule = NSBundle(URL: url!)!
//                getLanguageBundle(lang!)
            }
            else {
                let url = NSBundle(forClass: BigTipper.self).URLForResource("en", withExtension: "lproj")
                localeModule = NSBundle(URL: url!)!
//                let localizeString = NSLocale.currentLocale().localeIdentifier
//                let index: String.Index = advance(localizeString.startIndex, 2)
//                getLanguageBundle(localizeString.substringToIndex(index))
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

//func localizedString(key: String, value: String? = nil, table: String? = nil) -> String {
//    if let languageBundle = languageBundle {
//        return languageBundle.localizedStringForKey(key, value: value, table: table)
//    }
//    return key
//}

//func getLanguageBundle(localizeString: String = NSLocale.currentLocale().localeIdentifier) -> NSBundle? {
//    let classBundle = NSBundle(forClass: BigTipper.self)
//    guard let languageRootBundlePath = classBundle.pathForResource("BigTipper", ofType: "bundle") else { return nil }
//    guard let languageRootBundle = NSBundle(path: languageRootBundlePath) else { return nil }
////    let localizeString = NSLocale.currentLocale().localeIdentifier
////    let index: String.Index = advance(localizeString.startIndex, 2)
//    guard let languageBundlePath = languageRootBundle.pathForResource(localizeString, ofType: "lproj") else { return nil }
//    return NSBundle(path: languageBundlePath)
//}
