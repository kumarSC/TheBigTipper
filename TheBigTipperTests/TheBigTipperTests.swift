//
//  TheBigTipperTests.swift
//  TheBigTipperTests
//
//  Created by Sushant Choudhary on 7/20/15.
//  Copyright © 2015 Sushant Choudhary. All rights reserved.
//

import XCTest
@testable import TheBigTipper

class TheBigTipperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()

//        let url = NSBundle(forClass: self.classForCoder).URLForResource("Localizable", withExtension: "strings")
//         NSBundle(URL: url!)
//        print(NSBundle(URL: url!))

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {




        print(BigTipper.name.defaultName)
        print(BigTipper.name.firstname())
        print(BigTipper.name.lastname())

        print(BigTipper.finance.account())
        print(BigTipper.finance.defaultAmount)

        print(BigTipper.helper.createTransaction())
        print(BigTipper.helper.createCard())

        print(BigTipper.network.defaulthexdump)


        print(BigTipper.helper.setLanguage("de"))
        print(BigTipper.finance.transactionType())
        print(BigTipper.helper.createTransaction())

        print(BigTipper.internet.username())
        print(BigTipper.internet.password(5))
        print(BigTipper.internet.url(true))


//







    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
