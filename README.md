# Focused.swift

An easy way to get text information about the currently focused app on OS X.

## Example

```Swift
import Focused

if let highlightedText = Focused.highlightedText() {
    popoverController.text = highlightedText
}
else {
    popoverController.text = Focused.elementText()
}
```

## Installation

### CocoaPods

The recommended way of installing `Focused.swift` is with the [CocoaPods](https://cocoapods.org/) dependency manager.

Update your `Podfile`:

```ruby
use_frameworks!
pod 'Focused', git: 'https://github.com/jimmyhillis/Focused.swift'
```

### Manually

Copy and paste `Focused.swift` into your project code.

## Next steps?

Return positioning information about the focused app for overlay positioning of external applications.
