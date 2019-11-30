//
//  SwiftUI.Font+FontResource.swift
//  R.swift Library
//
//  Created by Tobeas Brennan on 30-11-19.
//  From: https://github.com/mac-cain13/R.swift.Library
//  License: MIT License
//

import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public extension SwiftUI.Font {
	/**
	Creates and returns a SwiftUI.Font for the specified font resource (R.font.*) and size.
	
	- parameter resource: The font resource (R.font.*) for the specific font to load
	- parameter size: The size (in points) to which the font is scaled. This value must be greater than 0.0.
	
	- returns: A SwiftUI.Font object of the specified font resource and size.
	*/
	init(_ resource: FontResourceType, size: CGFloat) {
		self = .custom(resource.fontName, size: size)
	}
}
