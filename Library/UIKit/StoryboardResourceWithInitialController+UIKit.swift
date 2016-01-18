//
//  StoryboardResourceWithInitialController+UIKit.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 07-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public extension StoryboardResourceWithInitialControllerType {
  /**
   Instantiates and returns the initial view controller in the view controller graph.

   - returns: The initial view controller in the storyboard.
   */
  public func initialViewController() -> InitialController? {
    return UIStoryboard(resource: self).instantiateInitialViewController() as? InitialController
  }
}
