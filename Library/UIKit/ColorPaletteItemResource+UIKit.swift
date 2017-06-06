//
//  ColorPaletteItemResource+UIKit.swift
//  R.swift.Library
//
//  Created by Tom Lokhorst on 2016-04-23.
//  From: https://github.com/mac-cain13/R.swift.Library
//  License: MIT License
//

import UIKit

public extension ColorPaletteItemResourceType {
  /**
   Returns the a UIColor

   - returns: A UIColor for this color palette item resource
   */
  func color() -> UIColor {
    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
  }
}
