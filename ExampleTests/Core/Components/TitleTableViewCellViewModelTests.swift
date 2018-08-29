//
//  TitleTableViewCellViewModelTests.swift
//  ExampleTests
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import XCTest

@testable import Example

class TitleTableViewCellViewModelTests: XCTestCase {
	
	var sut: TitleTableViewCellViewModel!
    
    override func setUp() {
        super.setUp()
		
		self.sut = TitleTableViewCellViewModel(title: "Some title")
    }
	
	func test_initializedTitle() {
		XCTAssertEqual(self.sut.title, "Some title")
	}
	
}
