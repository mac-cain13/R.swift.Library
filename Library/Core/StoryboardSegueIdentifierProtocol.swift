//
//  StoryboardSegueIdentifierProtocol.swift
//  R.swift Library
//
//  Created by Mathijs Kadijk on 06-12-15.
//  Copyright © 2015 Mathijs Kadijk. All rights reserved.
//

import Foundation

/// Segue identifier protocol
public protocol StoryboardSegueIdentifierType: IdentifierType {
  /// Type of the segue itself
  typealias SegueType

  /// Type of the source view controller
  typealias SourceType

  /// Type of the destination view controller
  typealias DestinationType
}

/// Segue identifier
public struct StoryboardSegueIdentifier<Segue, Source, Destination>: StoryboardSegueIdentifierType {
  /// Type of the segue itself
  public typealias SegueType = Segue

  /// Type of the source view controller
  public typealias SourceType = Source

  /// Type of the destination view controller
  public typealias DestinationType = Destination

  /// Identifier string of this segue
  public let identifier: String

  /**
   Create a new identifier based on the identifier string
   
   - returns: A new StoryboardSegueIdentifier
  */
  public init(identifier: String) {
    self.identifier = identifier
  }
}

/// Typed segue information
public struct TypedStoryboardSegueInfo<Segue, Source, Destination>: StoryboardSegueIdentifierType {
  /// Type of the segue itself
  public typealias SegueType = Segue

  /// Type of the source view controller
  public typealias SourceType = Source

  /// Type of the destination view controller
  public typealias DestinationType = Destination

  /// Segue destination view controller
  public let destinationViewController: Destination

  /// Segue identifier
  public let identifier: String

  /// The original segue
  public let segue: Segue

  /// Segue source view controller
  public let sourceViewController: Source
}
