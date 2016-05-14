//
//  NibResource.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation

/// Represents a nib file on disk
public protocol NibResourceType {

  /// Bundle this nib is in or nil for main bundle
  var bundle: NSBundle { get }

  /// Name of the nib file on disk
  var name: String { get }
}
