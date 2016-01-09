//
//  FileResource.swift
//  Pods
//
//  Created by Mathijs Kadijk on 06-01-16.
//
//

import Foundation

public struct FileResource {
  /// Bundle this file is in or nil for main bundle
  public let bundle: NSBundle?

  /// Name of the file file on disk
  public let name: String

  /// Extension of the file on disk
  public let pathExtension: String

  public var url: NSURL? {
    return bundle?.URLForResource(name, withExtension: pathExtension, subdirectory: nil, localization: nil)
  }

  public init(bundle: NSBundle?, name: String, pathExtension: String) {
    self.bundle = bundle
    self.name = name
    self.pathExtension = pathExtension
  }
}
