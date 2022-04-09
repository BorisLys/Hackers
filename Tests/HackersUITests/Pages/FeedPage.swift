//
//  FeedPage.swift
//  HackersUITests
//
//  Created by Boris Lysikov on 09.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import XCTest
import Hackers

final class FeedPage: CommonPage {
    
    // MARK: - UI elements
    
    private lazy var postTitleLabel: XCUIElement = {
        app.staticTexts[AccessibilityIDs.FeedScreen.StaticText.titleLabel.accessibilityID].firstMatch
    }()
    
    private lazy var postMetadataLabel: XCUIElement = {
        app.staticTexts[AccessibilityIDs.FeedScreen.StaticText.metadataLabel.accessibilityID].firstMatch
    }()
    
    // MARK: -  Actions
    
    
    
    // MARK: -  Verification
    
}
