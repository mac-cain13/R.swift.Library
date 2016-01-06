//
//  NibResource+UIKit.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 06-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

public extension NibResource {
  /**
   Create a new instance of this nib file

   - returns: A new instance of this nib
   */
  public func initialize() -> UINib {
    return UINib.init(nibName: name, bundle: bundle)
  }
}
