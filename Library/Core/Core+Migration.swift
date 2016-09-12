//
//  Core+Migration.swift
//  R.swift.Library
//
//  Created by Tom Lokhorst on 2016-09-08.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import Foundation

// Renames from Swift 2 to Swift 3

public extension StoryboardSegueIdentifier {

  @available(*, unavailable, renamed: "storyboardSegue(withSource:)")
  public func storyboardSegueWithSource(_ sourceViewController: Source)
    -> StoryboardSegue<Segue, Source, Destination>
  {
    fatalError()
  }
}

public extension TypedStoryboardSegueInfo {

  @available(*, unavailable, renamed: "destination")
  public var destinationViewController: Destination { fatalError() }

  @available(*, unavailable, renamed: "source")
  public var sourceViewController: Source { fatalError() }
}

public extension StoryboardSegue {

  @available(*, unavailable, renamed: "source")
  public var sourceViewController: Source { fatalError() }

  @available(*, unavailable, renamed: "init(identifier:source:)")
  public init(identifier: StoryboardSegueIdentifier<Segue, Source, Destination>, sourceViewController: Source) {
    fatalError()
  }
}
