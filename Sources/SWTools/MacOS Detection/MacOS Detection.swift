//
//  MacOS Detection.swift
//
//
//  Created by Matt Sullivan on 27/04/2024.
//

import Foundation
import SwiftUI

// Detect MacOS if running Mac(Designed for iPad) Destination
public struct IsOnMacKey: EnvironmentKey {
    public static let defaultValue: Bool = ProcessInfo.processInfo.isiOSAppOnMac
}

public extension EnvironmentValues {
    var isOnMac: Bool {
        get { self[IsOnMacKey.self] }
        set { self[IsOnMacKey.self] = newValue }
    }
}
