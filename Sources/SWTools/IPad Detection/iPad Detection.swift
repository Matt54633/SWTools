//
//  iPad Detection.swift
//  
//
//  Created by Matt Sullivan on 29/04/2024.
//

import Foundation
import SwiftUI

#if os(iOS)
import UIKit
// Detect iPad Device Idiom
public struct IsOnIpadKey: EnvironmentKey {
    public static let defaultValue: Bool = UIDevice.current.userInterfaceIdiom == .pad
}

public extension EnvironmentValues {
    var isOnIpad: Bool {
        get { self[IsOnIpadKey.self] }
        set { self[IsOnIpadKey.self] = newValue }
    }
}
#endif
