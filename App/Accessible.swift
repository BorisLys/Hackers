//
//  Accessible.swift
//  Hackers
//
//  Created by Boris Lysikov on 02.04.2022.
//  Copyright © 2022 Glass Umbrella. All rights reserved.
//

import Foundation

protocol Accessible {
    func generateAccessibilityIdentifiers()
}

extension Accessible {

    func generateAccessibilityIdentifiers() {
        #if DEBUG
        let mirror = Mirror(reflecting: self)

        for child in mirror.children {
            if
                let view = child.value as? UIView,
                let identifier = child.label?.replacingOccurrences(of: ".storage", with: "") {

                view.accessibilityIdentifier = "\(type(of: self)).\(identifier)"
            }
        }
        #endif
    }
}
