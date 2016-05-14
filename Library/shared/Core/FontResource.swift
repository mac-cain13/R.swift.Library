//
//  FontResource.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 06-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

public protocol FontResourceType {
  /// Name of the font
  var fontName: String { get }
}

public struct FontResource: FontResourceType {
  /// Name of the font
  public let fontName: String

  public init(fontName: String) {
    self.fontName = fontName
  }
}
