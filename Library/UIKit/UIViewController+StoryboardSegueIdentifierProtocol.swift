//
//  UIViewController+StoryboardSegueIdentifierProtocol.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public extension UIViewController {
  /**
   Initiates the segue with the specified identifier (R.segue.*) from the current view controller's storyboard file.
   
   - parameter identifier: The R.segue.* that identifies the triggered segue.
   - parameter segue: The object that you want to use to initiate the segue. This object is made available for informational purposes during the actual segue.
   
   - SeeAlso: Library for typed block based segues: [tomlokhorst/SegueManager](https://github.com/tomlokhorst/SegueManager)
  */
  public func performSegueWithIdentifier<Identifier: StoryboardSegueIdentifierType>(identifier: Identifier, sender: AnyObject?) {
    performSegueWithIdentifier(identifier.identifier, sender: sender)
  }
}

public extension StoryboardSegue where Source : UIViewController {
  /// Performs the specified segue
  public func performSegue(sender: AnyObject? = nil) {
    sourceViewController.performSegueWithIdentifier(identifier.identifier, sender: sender)
  }
}
