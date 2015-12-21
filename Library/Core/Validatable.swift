//
//  Validatable.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 17-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation

public struct ValidationError: ErrorType, CustomStringConvertible {
  public let description: String

  public init(description: String) {
    self.description = description
  }
}

/// Validates this entity and throws if it encounters a invalid situation, a validatable should also validate it sub-validatables if it has any. Only things that can't be validated compile time, but result in an invalid situation should be validated
public protocol Validatable {
  static func validate() throws
}

extension Validatable {
  public static func assertValid() {
    assert( theRealAssert() )
  }

  private static func theRealAssert() -> Bool {
    do {
      try validate()
    } catch {
      assertionFailure("Validation of \(self.dynamicType) failed with error: \(error)")
    }

    return true
  }
}
