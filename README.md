<p align="center">
    <img src="SWTools Logo.svg" height="100">
</p>

<p align="center">
    <img src="https://img.shields.io/badge/iOS-17.0+-27ae60.svg" />
    <img src="https://img.shields.io/badge/macOS-14.0+-2980b9.svg" />
    <img src="https://img.shields.io/badge/visionOS-1.0+-e67e22.svg" />
</p>

SWTools is versatile Swift Package for use with SwiftUI, allowing you to detect shake gestures and safe area insets, extend types and more!

This package is compatible with iOS and MacOS. 

## Installation

SWTools uses Swift Package Manager, therefore add [https://github.com/matt54633/SWTools](https://github.com/matt54633/SWTools) as a package dependency to your project. 

Once installed, import SWTools where required using:

```swift
import SWTools
```

## Usage

### Shake Detection

To detect a shake gesture simply add the `.onShake` modifier to a View:
```swift
Rectangle()
    .onShake {
        // execute code
    }
```

### MacOS Detection

If using the `MacOS(Designed for iPad)` destination, running specific code for MacOS can be challenging. To simply this process, use the `isOnMac` environment property:
```swift 
@Environment(\.isOnMac) var isOnMac

if isOnMac {
    // execute code
}
```

### Safe Area Detection

To detect the safe area insets of a device, use the `safeAreaInsets` environment property:
```swift 
@Environment(\.safeAreaInsets) var safeAreaInsets

if safeAreaInsets.bottom > 20 {
    // execute code
}
```

### Other Tools

See the source code for other tool documentation!
