//
//  ImageResource+UIKit.swift
//  R.swift.Library
//
//  Created by kemchenj on 03-11-21.
//  From: https://github.com/mac-cain13/R.swift.Library
//  License: MIT License
//

#if os(iOS) || os(tvOS)
import UIKit

extension ImageResource {
  /// Returns the image from this resource (R.image.*) that is compatible with the trait collection.
  ///
  /// - Parameter traitCollection: The traits associated with the intended environment for the image. Use this parameter to ensure that the correct variant of the image is loaded. If you specify nil, this method uses the traits associated with the main screen.
  /// - Returns: Traits that describe the desired image to retrieve, pass nil to use traits that describe the main screen.
  public func callAsFunction(compatibleWith traitCollection: UITraitCollection? = nil) -> UIImage? {
    UIImage(resource: self, compatibleWith: traitCollection)
  }
}
#endif
