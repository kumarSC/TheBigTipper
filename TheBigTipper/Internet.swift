//
//  Internet.swift
//  TheBigTipper
//
//  Created by Sushant Choudhary on 7/24/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import Foundation

extension BigTipper.internet {

    static let baseData = ["1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

    public static func email() -> String {

        return ((BigTipper.name.firstname().lowercaseString)+"."+(BigTipper.name.lastname().lowercaseString))+"@"+(BigTipper.helper.getRandom(mailDomain))+"."+"com"
    }

    public static func username() -> String {
        
        return String(Array(BigTipper.name.firstname().characters)[0])+BigTipper.name.lastname()
    }

    public static func password(len:Int) -> String {

        return BigTipper.helper.randomAlphaNum(len) as String
    }

    public static func url(ssl:Bool) -> String {

        if ssl {
            return "https://"+String(BigTipper.helper.randomAlphaNum(5)).lowercaseString+"."+BigTipper.helper.getRandom(urltype)
        }
        else {
            return "http://"+String(BigTipper.helper.randomAlphaNum(5)).lowercaseString+"."+BigTipper.helper.getRandom(urltype)
        }



    }


}