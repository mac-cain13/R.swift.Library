//
//  FileResource.swift
//  Pods
//
//  Created by Mathijs Kadijk on 06-01-16.
//
//

import Foundation

public protocol FileResource {
  /// Bundle this file is in or nil for main bundle
  var bundle: NSBundle? { get }

  /// Name of the file file on disk
  var name: String { get }

  /// Extension of the file on disk
  var pathExtension: String { get }
}

public extension FileResource {
  public var url: NSURL? {
    return bundle?.URLForResource(name, withExtension: pathExtension, subdirectory: nil, localization: nil)
  }
}
