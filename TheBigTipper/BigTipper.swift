//
//  BigTipper.swift
//  TheBigTipper
//
//  Created by Sushant Choudhary on 7/17/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import Foundation


public class BigTipper {

    public struct name {

        static var defaultName: String {
            return (BigTipper.name.firstname()+" "+BigTipper.name.lastname())
        }

        static func firstname() -> String {
            return BigTipper.helper.getRandom(firstnameSet)
        }

        static func lastname() -> String {
            return BigTipper.helper.getRandom(lastnameSet)
            
        }
    }


    public struct finance {

        static var defaultAmount: String {
            return BigTipper.finance.amount(1000, max: 100000)
        }

        var defaultTransactionType: String {
            return BigTipper.finance.transactionType()
        }
        var defaultAccountName: String {
            return BigTipper.finance.accountName()
        }
        var defaultAccount: String {
            return BigTipper.finance.account()
        }

//        init() {
//            defaultAmount = amount
//            defaultTransactionType = transactionType
//            defaultAccountName = accountName
//            defaultAccount = account
//        }

}


    public struct company {

        static var defaultCompanyName: String {
            return BigTipper.company.companyName()
        }

        static var defaultPhoneNumber: String {
            return BigTipper.company.phoneNumber()
        }
    }

    public struct crashit {
        static var crashIt: String {
            return "assert[false]"
        }

    }

    public struct network {

        static var defaulthexdump: String {
            return BigTipper.network.hexdump()

        }

        
        static func testSplit() {

            var hexDumpSet = Set<Int>()

            for index in 150...255 {
                let hex = String(index, radix: 16)
                let intHex = Int(hex, radix: 16)
                hexDumpSet.insert(intHex!)
            }
            print(hexDumpSet)
        }
    }
}





enum nameType {
    
    case firstname, middlename, lastname
}



