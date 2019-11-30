//
//  SwiftUI.Color+ColorResource.swift
//  R.swift Library
//
//  Created by Tobeas Brennan on 30-11-19.
//  From: https://github.com/mac-cain13/R.swift.Library
//  License: MIT License
//

import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public extension SwiftUI.Color {
	/**
	Returns the SwiftUI.Color from this resource (R.color.*)
	
	- parameter resource: The resource you want the image of (R.color.*)
	
	- returns: A SwiftUI.Color for the given resource (R.color.*)
	*/
	init(_ resource: ColorResourceType) {
		self.init(resource.name, bundle: resource.bundle)
	}
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public extension ColorResource {
	var color: SwiftUI.Color {
		SwiftUI.Color(self)
	}
}
