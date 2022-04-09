//
//  CommonPage+Extensions.swift
//  HackersUITests
//
//  Created by Boris Lysikov on 09.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import XCTest

// MARK: - Protocols

protocol NavigationBarProtocol: CommonPage {
    var backButton: XCUIElement { get }
    
    func tapBackButton() -> Self
}

extension NavigationBarProtocol {
    
    var backButton: XCUIElement {
        app.navigationBars.children(matching: .button).firstMatch
    }
    
    @discardableResult
    func tapBackButton() -> Self {
        backButton.checkExistence()
        backButton.tapElement()
        return self
    }
    
}
