


import Foundation

extension BigTipper.network {



    static func hexdump() -> String {

        var hexSet:String = ""

        for next in 1...12 {
            let baseIntA = Int(arc4random_uniform(UInt32(UInt16.max)))
            let baseIntB = Int(arc4random_uniform(UInt32(UInt16.max)))
            let hex = String(format: "%06X%06X", baseIntA, baseIntB)
            hexSet = hexSet + hex
        }

        for var i=0; i<=214; i+=3 {
            hexSet.insert(Character(" "), atIndex: advance(hexSet.startIndex, i))
        }

        return hexSet

}
}
