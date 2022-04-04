//
//  AccessibilityIDs.swift
//  Hackers
//
//  Created by Boris Lysikov on 02.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import Foundation

public struct AccessibilityIDs {
    
    public enum FeedScreen: AccessibilityIDProvider {
        case screen
        case titleLabel
        case metadataLabel
    }
    
    public enum SettingsScreen: AccessibilityIDProvider {
        case screen
    }
    
    public enum NewsDetailsScreen: AccessibilityIDProvider {
        case screen
    }

}
