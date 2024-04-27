//
//  Color Extensions.swift
//
//
//  Created by Matt Sullivan on 27/04/2024.
//

import Foundation
import SwiftUI

public extension UIColor {
    
    // Return the RGBA components of a Color
    var rgba: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return (red, green, blue, alpha)
    }
    
    // Return the Hex value of a Color
    var hexString: String {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        let redHex = String(format: "%02X", Int(red * 255))
        let greenHex = String(format: "%02X", Int(green * 255))
        let blueHex = String(format: "%02X", Int(blue * 255))
        let alphaHex = String(format: "%02X", Int(alpha * 255))
        
        return "#\(redHex)\(greenHex)\(blueHex)\(alphaHex)"
    }
    
    // Return the HSL components of a Color
    var hsl: (h: CGFloat, s: CGFloat, l: CGFloat) {
        var h: CGFloat = 0
        var s: CGFloat = 0
        var l: CGFloat = 0
        var a: CGFloat = 0
        self.getHue(&h, saturation: &s, brightness: &l, alpha: &a)
        return (h, s, l)
    }
    
    // Convert RGB to Hex
    func toHexString() -> String {
        let components = cgColor.components
        let r = components?[0] ?? 0
        let g = components?[1] ?? 0
        let b = ((components?.count ?? 0) > 2 ? components?[2] : g) ?? 0
        let hexString = String(format: "%02lX%02lX%02lX", lroundf(Float(r * 255)), lroundf(Float(g * 255)), lroundf(Float(b * 255)))
        return hexString
    }
    
    // Convert RGB to HSL
    func toHSL() -> (h: CGFloat, s: CGFloat, l: CGFloat) {
        let rgba = self.rgba
        let r = rgba.red
        let g = rgba.green
        let b = rgba.blue
        
        let max = Swift.max(r, g, b)
        let min = Swift.min(r, g, b)
        var h, s, l: CGFloat
        
        l = (max + min) / 2
        
        if max == min {
            h = 0
            s = 0
        } else {
            let d = max - min
            s = l > 0.5 ? d / (2 - max - min) : d / (max + min)
            switch max {
            case r:
                h = (g - b) / d + (g < b ? 6 : 0)
            case g:
                h = (b - r) / d + 2
            case b:
                h = (r - g) / d + 4
            default:
                h = 0
            }
            h /= 6
        }
        
        return (h: h, s: s, l: l)
    }
    
}
