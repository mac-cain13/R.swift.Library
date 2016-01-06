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

  /**
   Instantiate the nib to get the top-level object from this nib

   - parameter ownerOrNil: The owner, if the owner parameter is nil, connections to File's Owner are not permitted.
   - parameter options: Options are identical to the options specified with -[NSBundle loadNibNamed:owner:options:]

   - returns: An array containing the top-level objects from the NIB
   */
  public func instantiateWithOwner(ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]?) -> [AnyObject] {
    return initialize().instantiateWithOwner(ownerOrNil, options: optionsOrNil)
  }
}
