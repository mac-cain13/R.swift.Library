//
//  ColorResource+UIKit.swift
//  R.swift.Library
//
//  Created by Tom Lokhorst on 2016-04-23.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import UIKit

public extension ColorResourceType {
  /**
   Returns the a UIColor

   - returns: A UIColor for this color resource
   */
  func color() -> UIColor {
    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
  }
}
