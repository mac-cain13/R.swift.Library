//
//  UIFont+FontResource.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 06-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

public extension UIFont {
  /**
   Creates and returns a font object for the specified font resource and size.

   - parameter font: The font resource for the specific font to load
   - parameter size: The size (in points) to which the font is scaled. This value must be greater than 0.0.

   - returns: A font object of the specified font resource and size.
   */
  public convenience init?(font: FontResource, size: CGFloat) {
    self.init(name: font.fontName, size: size)
  }
}
