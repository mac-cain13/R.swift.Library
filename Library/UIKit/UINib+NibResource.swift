//
//  UINib+NibResource.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 08-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import UIKit

public extension UINib {
  /**
   Returns a UINib object initialized to the nib file of the specified resource (R.nib.*).

   - parameter resource: The resource (R.nib.*) to load

   - returns: The initialized UINib object. An exception is thrown if there were errors during initialization or the nib file could not be located.
   */
  public convenience init(resource: NibResource) {
    self.init(nibName: resource.name, bundle: resource.bundle)
  }
}