//
//  NibResource+UIKit.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 06-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public extension NibResourceType {
  /**
   Instantiate the nib to get the top-level objects from this nib

   - parameter ownerOrNil: The owner, if the owner parameter is nil, connections to File's Owner are not permitted.
   - parameter options: Options are identical to the options specified with -[NSBundle loadNibNamed:owner:options:]

   - returns: An array containing the top-level objects from the NIB
   */
  public func instantiateWithOwner(ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]? = nil) -> [AnyObject] {
    return UINib(resource: self).instantiateWithOwner(ownerOrNil, options: optionsOrNil)
  }
}
