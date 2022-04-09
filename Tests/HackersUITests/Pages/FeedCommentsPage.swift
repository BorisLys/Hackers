//
//  FeedCommentsPage.swift
//  HackersUITests
//
//  Created by Boris Lysikov on 09.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import XCTest
import Hackers

final class FeedCommentsPage: CommonPage {
    
    // MARK: - UI elements
    
    private lazy var authorLabel: XCUIElement = {
        app.staticTexts[AccessibilityIDs.FeedCommentsScreen.StaticText.authorLabel.accessibilityID].firstMatch
    }()
    
    private lazy var datePostedLabel:XCUIElement = {
        app.staticTexts[AccessibilityIDs.FeedCommentsScreen.StaticText.datePostedLabel.accessibilityID].firstMatch
    }()
    
}
