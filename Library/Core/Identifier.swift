//
//  Identifier.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation

/// Base protocol for all identifiers
public protocol Identifier: CustomStringConvertible {
  /// Identifier string
  var identifier: String { get }
}

extension Identifier {
  /// CustomStringConvertible implementation, returns the identifier
  public var description: String {
    return identifier
  }
}
