//
//  Foundation+Migration.swift
//  R.swift.Library
//
//  Created by Tom Lokhorst on 2016-09-08.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

// Renames from Swift 2 to Swift 3

public extension Bundle {

  @available(*, unavailable, renamed: "url(forResource:)")
  public func URLForResource(_ resource: FileResourceType) -> URL? {
    fatalError()
  }


  @available(*, unavailable, renamed: "path(forResource:)")
  public func pathForResource(_ resource: FileResourceType) -> String? {
    fatalError()
  }
}
