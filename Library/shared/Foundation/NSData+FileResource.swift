//
//  NSData+FileResource.swift
//  R.swift.Library
//
//  Created by Tom Lokhorst on 2016-03-11.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

public extension NSData {

  /**
   Creates and returns NSData with the contents of the specified file resource (R.file.*).

   - parameter resource: The file resource (R.file.*)

   - returns: A NSData object with the contents of the specified file.
   */
  public convenience init?(resource: FileResourceType) {
    guard let url = resource.url() else { return nil }
    self.init(contentsOfURL: url)
  }
}
