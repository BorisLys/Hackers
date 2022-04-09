//
//  SettingsPage.swift
//  HackersUITests
//
//  Created by Boris Lysikov on 09.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import XCTest
import Hackers

final class SettingsPage: CommonPage {
    
    private typealias SettingsPageStaticTextIDs = AccessibilityIDs.SettingsScreen.StaticText
    private typealias SettingsPageButtonIDs = AccessibilityIDs.SettingsScreen.Button
    
    // MARK: - UI elements
    
    // MARK: - StaticText
    
    private lazy var accountLabel: XCUIElement = {
        app.staticTexts[SettingsPageStaticTextIDs.accountLabel.accessibilityID].firstMatch
    }()
    
    private lazy var usernameLabel: XCUIElement = {
        app.staticTexts[SettingsPageStaticTextIDs.usernameLabel.accessibilityID].firstMatch
    }()
    
    private lazy var versionLabel: XCUIElement = {
        app.staticTexts[SettingsPageStaticTextIDs.versionLabel.accessibilityID].firstMatch
    }()
    
    private lazy var gitHubLabel: XCUIElement = {
        app.staticTexts[SettingsPageStaticTextIDs.gitHubLabel.accessibilityID].firstMatch
    }()
    
    private lazy var feedbackLabel: XCUIElement = {
        app.staticTexts[SettingsPageStaticTextIDs.feedbackLabel.accessibilityID].firstMatch
    }()
    
    private lazy var whatsNewLabel: XCUIElement = {
        app.staticTexts[SettingsPageStaticTextIDs.whatsNewLabel.accessibilityID].firstMatch
    }()
    
    private lazy var appNameLabel: XCUIElement = {
        app.staticTexts[SettingsPageStaticTextIDs.appNameLabel.accessibilityID].firstMatch
    }()
    
    private lazy var authorNameLabel: XCUIElement = {
        app.staticTexts[SettingsPageStaticTextIDs.authorNameLabel.accessibilityID].firstMatch
    }()
    
    private lazy var openInDefaultBrowserLabel: XCUIElement = {
        app.staticTexts[SettingsPageStaticTextIDs.openInDefaultBrowserLabel.accessibilityID].firstMatch
    }()
    
    // MARK: - Button
    
    private lazy var showThumbnailsSwitch: XCUIElement = {
        app.buttons[SettingsPageButtonIDs.showThumbnailsSwitch.accessibilityID].firstMatch
    }()
    
    private lazy var swipeActionsSwitch: XCUIElement = {
        app.buttons[SettingsPageButtonIDs.swipeActionsSwitch.accessibilityID].firstMatch
    }()
    
    private lazy var safariReaderModeSwitch: XCUIElement = {
        app.buttons[SettingsPageButtonIDs.safariReaderModeSwitch.accessibilityID].firstMatch
    }()
    
    private lazy var openInDefaultBrowserSwitch: XCUIElement = {
        app.buttons[SettingsPageButtonIDs.openInDefaultBrowserSwitch.accessibilityID].firstMatch
    }()
    
    // MARK: - Image
    
    private lazy var appImage: XCUIElement = {
        app.images[AccessibilityIDs.SettingsScreen.Image.appImage.accessibilityID].firstMatch
    }()
    
    // MARK: -  Actions
    
    // MARK: -  Verification
    
}
