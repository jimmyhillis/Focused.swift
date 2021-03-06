//
//  Focused.swift
//
//  Created by Jimmy Hillis on 7/06/2015.
//  Copyright (c) 2015 Jimmy Hillis. All rights reserved.
//

import Foundation

public struct Focused {
    /*
        Return the current focused element (a NS..) within the currently
        focused application on your OS
    */
    public static func element() -> AXUIElementRef? {
        let systemWideElement: AXUIElementRef = AXUIElementCreateSystemWide().takeRetainedValue()
        let result: AXUIElementRef? = systemWideElement.getAttribute(kAXFocusedUIElementAttribute)
        return result
    }
    /*
        Return the value (text) of the user's current focused element,
        which should be text within an editor
    */
    public static func elementText() -> String? {
        if let focusedElement: AXUIElementRef = Focused.element() {
            if let selectedText: AXValueRef = focusedElement.getAttribute(kAXValueAttribute) {
                return "\(selectedText)"
            }
        }
        return nil
    }
    /*
        Return the value (text) of the user's current highlighted text,
        within the currently focused element
    */
    public static func highlightedText() -> String? {
        if let focusedElement: AXUIElementRef = Focused.element() {
            if let highlightedText: AXValueRef = focusedElement.getAttribute(kAXSelectedTextAttribute) {
                if !"\(highlightedText)".isEmpty {
                    return "\(highlightedText)"
                }
            }
        }
        return nil
    }
}

public extension AXUIElement {
    /*
        Helper method returns an accessibility attribute from
        an AXUIElement (e.g. the text of a focused NSTextField)
    */
    public func getAttribute<T>(property: String) -> T? {
        var ptr: AnyObject?
        if AXUIElementCopyAttributeValue(self, property, &ptr) != AXError.Success {
            return nil
        }
        return ptr.map {
            $0 as! T
        }
    }
}
