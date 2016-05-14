//
//  UIViewController+StoryboardSegueIdentifierProtocol.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public protocol SeguePerformerType {
  func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
}

extension UIViewController: SeguePerformerType { }

public extension SeguePerformerType {
  /**
   Initiates the segue with the specified identifier (R.segue.*) from the current view controller's storyboard file.
   - parameter identifier: The R.segue.* that identifies the triggered segue.
   - parameter sender: The object that you want to use to initiate the segue. This object is made available for informational purposes during the actual segue.
   - SeeAlso: Library for typed block based segues: [tomlokhorst/SegueManager](https://github.com/tomlokhorst/SegueManager)
   */
  public func performSegueWithIdentifier<Segue, Destination>(
    identifier: StoryboardSegueIdentifier<Segue, Self, Destination>,
    sender: AnyObject?) {
    performSegueWithIdentifier(identifier.identifier, sender: sender)
  }
}

public extension StoryboardSegue where Source : UIViewController {
  /**
   Performs this segue on the source view controller
   - parameter sender: The object that you want to use to initiate the segue. This object is made available for informational purposes during the actual segue.
   */
  public func performSegue(sender: AnyObject? = nil) {
    sourceViewController.performSegueWithIdentifier(identifier.identifier, sender: sender)
  }
}
