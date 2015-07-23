


import Foundation

extension BigTipper.network {

    static func hexdump() -> String {

        let baseIntA = Int(arc4random() % 65535)
        let baseIntB = Int(arc4random() % 65535)
        let str = String(format: "%06X%06X", baseIntA, baseIntB)
        print("\(str)")
        return str


    }

}
