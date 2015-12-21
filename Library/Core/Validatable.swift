//
//  Validatable.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 17-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation

struct ValidationError: ErrorType, CustomStringConvertible {
  let description: String
}

protocol Validatable {
  func validate() throws
}

extension Validatable {
  func assertValid() {
    assert( theRealAssert() )
  }

  private func theRealAssert() -> Bool {
    do {
      try validate()
    } catch {
      assertionFailure("Validation of \(self.dynamicType) failed with error: \(error)")
    }

    return true
  }
}
