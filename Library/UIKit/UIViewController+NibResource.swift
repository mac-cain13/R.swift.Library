//
//  UIViewController+NibResource.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public extension UIViewController {
  /**
   Returns a newly initialized view controller with the nib resource (R.nib.*).
   
   - parameter nib: The nib resource (R.nib.*) to associate with the view controller.
   
   - returns: A newly initialized UIViewController object.
  */
  public convenience init(nib: NibResourceType) {
    self.init(nibName: nib.name, bundle: nib.bundle)
  }
}
