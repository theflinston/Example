//
//  StringLocalizationTests.swift
//  ExampleTests
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import XCTest

@testable import Example

class StringLocalizationTests: XCTestCase {
	
	func test_localized() {
		XCTAssertEqual("CITIES_SCREEN_TITLE".localized, "Cities")
	}
	
	
	func test_localizedWithComment() {
		XCTAssertEqual("CITIES_SCREEN_TITLE".localized(withComment: "comment"), "Cities")
	}
	
}
