//
//  NSBundle+FileResource.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 10-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

public extension NSBundle {
  /**
   Returns the file URL for the given resource (R.file.*).

   - parameter resource: The resource to get the file URL for (R.file.*).

   - returns: The file URL for the resource file (R.file.*) or nil if the file could not be located.
   */
  public func URLForResource(resource: FileResource) -> NSURL? {
    return URLForResource(resource.name, withExtension: resource.pathExtension, subdirectory: nil, localization: nil)
  }

  /**
   Returns the full pathname for the resource (R.file.*).

   - parameter resource: The resource file to get the path for (R.file.*).

   - returns: The full pathname for the resource file (R.file.*) or nil if the file could not be located.
   */
  public func pathForResource(resource: FileResource) -> String? {
    return pathForResource(resource.name, ofType: resource.pathExtension, inDirectory: nil, forLocalization: nil)
  }
}
