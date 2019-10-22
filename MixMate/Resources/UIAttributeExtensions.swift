//
//  UIAttributeExtensions.swift
//  MixMate
//
//  Created by Ajay Merchia on 10/21/19.
//  Copyright © 2019 Mobile Developers of Berkeley. All rights reserved.
//

import Foundation
import SwiftUI


extension Color {
	init(hex: String) {
		guard let rgb = Int(hex.replacingOccurrences(of: "#", with: "")) else {
			fatalError("Invalid hex string \"\(hex)\"")
		}
		self.init(
			red: Double((rgb >> 16) & 0xFF),
			green: Double((rgb >> 8) & 0xFF),
			blue: Double(rgb & 0xFF)
		)
	}
	
	static var mixPrimary: Color {
		return mixRed
	}
	static var mixSecondary: Color {
		return mixBlue
	}
	
	static let mixRed 		= Color(hex: "F74762")
	static let mixMaroon 	= Color(hex: "D55EA3")
	static let mixPurple	= Color(hex: "CD5DCA")
	static let mixLavender 	= Color(hex: "9688DB")
	static let mixBlue	 	= Color(hex: "67BCEB")
}

