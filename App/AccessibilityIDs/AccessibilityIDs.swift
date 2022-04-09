//
//  AccessibilityIDs.swift
//  Hackers
//
//  Created by Boris Lysikov on 09.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import Foundation

public struct AccessibilityIDs {

    public enum SettingsScreen {
        
        public enum StaticText: AccessibilityIDProviderProtocol {
            case accountLabel
            case usernameLabel
            case versionLabel
            case gitHubLabel
            case feedbackLabel
            case whatsNewLabel
            case appNameLabel
            case authorNameLabel
            case openInDefaultBrowserLabel
        }
        
        public enum Button: AccessibilityIDProviderProtocol {
            case showThumbnailsSwitch
            case swipeActionsSwitch
            case safariReaderModeSwitch
            case openInDefaultBrowserSwitch
        }
        
        public enum Image: AccessibilityIDProviderProtocol {
            case appImage
        }
    }
    
    public enum FeedScreen {
        
        public enum StaticText: AccessibilityIDProviderProtocol {
            case titleLabel
            case metadataLabel
        }
        
    }
    
    public enum FeedCommentsScreen {
        public enum StaticText: AccessibilityIDProviderProtocol {
            case authorLabel
            case datePostedLabel
        }
        
    }
}

