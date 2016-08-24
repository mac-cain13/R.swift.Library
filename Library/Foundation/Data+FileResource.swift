//
//  Data+FileResource.swift
//  R.swift.Library
//
//  Created by Tom Lokhorst on 2016-03-11.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

public struct NoUrlForResourceError: Error {}

public extension Data {

  /**
   Creates and returns NSData with the contents of the specified file resource (R.file.*).

   - parameter resource: The file resource (R.file.*)

   - returns: A NSData object with the contents of the specified file.
   */
  public init(resource: FileResourceType) throws {
    guard let url = resource.url() else { throw NoUrlForResourceError() }
    try self.init(contentsOf: url)
  }
}
