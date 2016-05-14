//
//  TypedStoryboardSegueInfo+UIStoryboardSegue.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

extension TypedStoryboardSegueInfo {
  /**
   Returns typed information about the given segue, fails if the segue types don't exactly match types.
   
   - returns: A newly initialized TypedStoryboardSegueInfo object or nil.
  */
  public init?<SegueIdentifier: StoryboardSegueIdentifierType where SegueIdentifier.SegueType == Segue, SegueIdentifier.SourceType == Source, SegueIdentifier.DestinationType == Destination>(segueIdentifier: SegueIdentifier, segue: UIStoryboardSegue) {
    guard let identifier = segue.identifier,
      sourceViewController = segue.sourceViewController as? SegueIdentifier.SourceType,
      destinationViewController = segue.destinationViewController as? SegueIdentifier.DestinationType,
      segue = segue as? SegueIdentifier.SegueType
      where identifier == segueIdentifier.identifier
      else {
        return nil
    }

    self.segue = segue
    self.identifier = identifier
    self.sourceViewController = sourceViewController
    self.destinationViewController = destinationViewController
  }
}
