//
//  Haptic Feedback.swift
//
//
//  Created by Matt Sullivan on 19/05/2024.
//

import SwiftUI

public enum HapticFeedback {
    case light, medium, heavy
}

#if os(iOS)
public func hapticFeedback(_ feedback: HapticFeedback) {
    switch feedback {
    case .light:
        let generator = UIImpactFeedbackGenerator(style: .light)
        generator.impactOccurred()
    case .medium:
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    case .heavy:
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
    }
}
#endif
