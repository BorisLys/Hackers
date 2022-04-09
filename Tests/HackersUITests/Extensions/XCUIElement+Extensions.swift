//
//  XCUIElement+Extensions.swift
//  HackersUITests
//
//  Created by Boris Lysikov on 09.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import XCTest

enum XCUIElementEvent: String {
    case enabled = "enabled == true"
    case exists = "exists == true"
    case existsAndEnabled = "exists == true AND enabled == true"
    case hidden = "exists == false"
    case disabled = "exists == true AND enabled == false"
    case hittable = "isHittable == true"
    case existAndHittable = "exists == true AND hittable == true"
    case existHittableAndEnabled =
            "exists == true AND hittable == true and enabled == true"
}

extension XCUIElement {
        
    func tapElement() {
        checkExistence()
        self.tap()
    }
    
    @discardableResult
    func wait(for event: XCUIElementEvent = .exists, time: TimeInterval = 10) -> XCUIElement {
        let expectation = makeWaitExpectation(event: event)
        let waitResult = XCTWaiter.wait(for: [expectation], timeout: time)
        
        XCTAssertTrue(waitResult == .completed, "Event '\(event.rawValue)' for \(self) did not happen")
        
        return self
    }
    
    private func makeWaitExpectation(event: XCUIElementEvent) -> XCTNSPredicateExpectation {
        let predicate = NSPredicate(format: event.rawValue)
        return XCTNSPredicateExpectation(predicate: predicate, object: self)
    }
    
    func checkExistence(_ isExists:Bool = true) {
        XCTAssertEqual(isExists, self.waitForExistence(timeout: 2), "Element exist should be \(isExists) but now is \(self.exists)")
    }
                
    func checkLabelEqualToString(_ checkValue: String) {
        self.checkExistence()
        
        XCTAssertEqual(
            self.label,
            checkValue,
            "\(String(describing: self.value)) isn't match \(checkValue)"
        )
    }
    
    func checkLabelContainsString(_ checkValue: String) {
        self.checkExistence()
        
        XCTAssertTrue(
            self.label.contains(checkValue),
            "\(String(describing: self.value)) not contains \(checkValue)"
        )
    }
    
    func checkValueEqualToString(_ checkValue: String) {
        self.checkExistence()

        XCTAssertEqual(
            self.value as! String,
            checkValue,
            "\(String(describing: self.value)) isn't match \(checkValue)"
        )
    }
    
}
