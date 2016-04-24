//
//  StringResource.swift
//  R.swift.Library
//
//  Created by Tom Lokhorst on 2016-04-23.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

public protocol StringResourceType {

  /// Key for the string
  var key: String { get }

  /// File in containing the string
  var tableName: String { get }

  /// Locales of the a localizable string
  var locales: [String] { get }
}

public struct StringResource: StringResourceType {

  /// Key for the string
  public let key: String

  /// File in containing the string
  public let tableName: String

  /// Locales of the a localizable string
  public let locales: [String]

  public init(key: String, tableName: String, locales: [String]) {
    self.key = key
    self.tableName = tableName
    self.locales = locales
  }
}
