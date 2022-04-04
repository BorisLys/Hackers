//
//  AccessibilityIDProvider.swift
//  Hackers
//
//  Created by Boris Lysikov on 02.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import UIKit

/// Provides an auto-computed accessibility identifier.
///
/// - Important: This protocol can only be adpted by enums. There is no constraint for that, because it makes code smaller.
public protocol AccessibilityIDProvider {}

public extension AccessibilityIDProvider {

    /// Accessibility identifier for UIAccessibilityIdentification.
    var accessibilityID: String {
        String(reflecting: self)
            .split(separator: ".")
            .dropFirst()
            .joined(separator: ".")
    }

}
