//
//  Validatable.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 17-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation

/// Error thrown during validation
public struct ValidationError: ErrorType, CustomStringConvertible {
  /// Human readable description
  public let description: String

  public init(description: String) {
    self.description = description
  }
}

public protocol Validatable {
  /**
   Validates this entity and throws if it encounters a invalid situation, a validatable should also validate it sub-validatables if it has any.

   - throws: If there the configuration error a ValidationError is thrown
   */
  static func validate() throws
}

extension Validatable {
  /**
   Validates this entity and asserts if it encounters a invalid situation, a validatable should also validate it sub-validatables if it has any. In -O builds (the default for Xcode's Release configuration), validation is not evaluated, and there are no effects.
   */
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
