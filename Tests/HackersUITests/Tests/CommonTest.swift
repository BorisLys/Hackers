//
//  CommonTest.swift
//  HackersUITests
//
//  Created by Boris Lysikov on 09.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import XCTest

class CommonTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override class func tearDown() {
        super.tearDown()
    }
}
