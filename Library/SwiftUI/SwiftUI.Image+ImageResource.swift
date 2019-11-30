//
//  SwiftUI.Image+ImageResource.swift
//  R.swift Library
//
//  Created by Tobeas Brennan on 30-11-19.
//  From: https://github.com/mac-cain13/R.swift.Library
//  License: MIT License
//

import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public extension SwiftUI.Image {
	/**
	Returns the image from this resource (R.image.*)
	
	- parameter resource: The resource you want the image of (R.image.*)
	
	- returns: A SwiftUI.Image for the given resource (R.image.*)
	*/
	init(_ resource: ImageResourceType) {
		self.init(resource.name, bundle: resource.bundle)
	}
}
