# Focused.swift

An easy way to get text information about the currently focused app on OS X.

## Example

```Swift
if let highlightedText = Focused.highlightedText() {
    popoverController.text = highlightedText
}
else {
    popoverController.text = Focused.elementText()
}
```

## Next steps?

Return positioning information about the focused app for overlay positioning of external applications.
