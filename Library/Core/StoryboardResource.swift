//
//  StoryboardResource.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 07-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

public protocol StoryboardResourceType {

  /// Bundle this storyboard is in
  var bundle: NSBundle { get }

  /// Name of the storyboard file on disk
  var name: String { get }
}

public protocol StoryboardResourceWithInitialControllerType: StoryboardResourceType {

  /// Type of the inital controller
  associatedtype InitialController
}
