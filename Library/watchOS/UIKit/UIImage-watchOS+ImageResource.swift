//
//  UIImage-watchOS+ImageResource.swift
//  R.swift.Library
//
//  Created by Tomas Harkema on 14-05-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public extension UIImage {
  /**
   Returns the image from this resource (R.image.*) that is compatible with the trait collection.

   - parameter resource: The resource you want the image of (R.image.*)

   - returns: An image that exactly or best matches the desired traits with the given resource (R.image.*), or nil if no suitable image was found.
   */
  public convenience init?(resource: ImageResourceType) {
    self.init(named: resource.name)
  }
}