//
//  ImageResource.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 11-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

public protocol ImageResourceType {

  /// Bundle this image is in
  var bundle: NSBundle { get }

  /// Name of the image
  var name: String { get }
}

public struct ImageResource: ImageResourceType {

  /// Bundle this image is in
  public let bundle: NSBundle

  /// Name of the image
  public let name: String

  public init(bundle: NSBundle, name: String) {
    self.bundle = bundle
    self.name = name
  }
}
