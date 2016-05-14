//
//  ColorResource.swift
//  R.swift.Library
//
//  Created by Tom Lokhorst on 2016-03-13.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public protocol ColorResourceType {

  /// Name of the color
  var name: String { get }

  /// Red componenent of color
  var red: CGFloat { get }

  /// Green componenent of color
  var green: CGFloat { get }

  /// Blue componenent of color
  var blue: CGFloat { get }

  /// Alpha componenent of color
  var alpha: CGFloat { get }
}

public struct ColorResource: ColorResourceType {

  /// Name of the color
  public let name: String

  /// Red componenent of color
  public let red: CGFloat

  /// Green componenent of color
  public let green: CGFloat

  /// Blue componenent of color
  public let blue: CGFloat

  /// Alpha componenent of color
  public let alpha: CGFloat

  public init(name: String, red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
    self.name = name
    self.red = red
    self.green = green
    self.blue = blue
    self.alpha = alpha
  }
}
