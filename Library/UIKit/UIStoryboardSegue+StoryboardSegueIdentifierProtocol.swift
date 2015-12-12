//
//  UIStoryboardSegue+StoryboardSegueIdentifierProtocol.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation
import UIKit

public extension UIStoryboardSegue {
  /**
   Get typed info about this segue for the given identifier (R.segue.*)
   
   - parameter identifier: The identifier this segue should be an instance of.
   
   - returns: Types information such as the destinationViewController cast to the correct type or nil if the segue doesn't match the given identifier (R.segue.*)
  */
  public func typedInfoWithIdentifier<Identifier: StoryboardSegueIdentifierProtocol, Segue, Source, Destination where Segue == Identifier.SegueType, Source == Identifier.SourceType, Destination == Identifier.DestinationType>(identifier: Identifier) -> TypedStoryboardSegueInfo<Segue, Source, Destination>? {
    guard self.identifier == identifier.identifier else { return nil }
    return TypedStoryboardSegueInfo(segue: self)
  }
}
