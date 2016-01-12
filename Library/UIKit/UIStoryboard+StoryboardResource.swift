//
//  UIStoryboard+StoryboardResource.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 07-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import UIKit

public extension UIStoryboard {
  /**
   Creates and returns a storyboard object for the specified storyboard resource (R.storyboard.*) file.

   - parameter resource: The storyboard resource (R.storyboard.*) for the specific storyboard to load

   - returns: A storyboard object for the specified file. If no storyboard resource file matching name exists, an exception is thrown with description: `Could not find a storyboard named 'XXXXXX' in bundle....`
   */
  public convenience init(resource: StoryboardResourceType) {
    self.init(name: resource.name, bundle: resource.bundle)
  }
}
