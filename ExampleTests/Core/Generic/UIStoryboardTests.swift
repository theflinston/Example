//
//  UIStoryboardTests.swift
//  ExampleTests
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import XCTest

@testable import Example

class UIStoryboardTests: XCTestCase {
    
	func test_citiesStoryboardName() {
		XCTAssertEqual(UIStoryboard.Name.cities, "Cities")
	}
	
}
