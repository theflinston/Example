//
//  String+Localization.swift
//  Example
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import Foundation

extension String {
	var localized: String {
		return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
	}
	
	func localized(withComment:String) -> String {
		return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: withComment)
	}
}
