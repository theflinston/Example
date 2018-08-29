//
//  CityViewModelTests.swift
//  ExampleTests
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import XCTest

@testable import Example

class CityViewModelTests: XCTestCase {
	
	var sut: CityViewModel!
	
    override func setUp() {
        super.setUp()
		
		self.sut = CityViewModel()
    }

	func test_title() {
		XCTAssertEqual(self.sut.title, "Cities")
	}
	
	func test_onViewDidLoad() {
		
		//stub
		var updateInterfaceCalled = false
		self.sut.updateInterface = {
			updateInterfaceCalled = true
		}
		
		//when
		self.sut.onViewDidLoad()
		
		//then
		XCTAssertTrue(updateInterfaceCalled)
	}
	
}

//Table view auxiliar function tests
extension CityViewModelTests {
	
	func test_numberOfSections() {
		XCTAssertEqual(self.sut.numberOfSections, 1)
	}
	
	func test_numberOfRowsInSection() {
		let numberOfRows = self.sut.numberOfRows(in: 0)
		XCTAssertEqual(numberOfRows, 5)
	}
	
	func test_cellIndentifierAtIndexPath() {
		let indexPath = IndexPath(row: 0, section: 0)
		XCTAssertEqual(self.sut.cellIndentifier(at: indexPath), "TitleTableViewCell")
	}
	
	func test_titleTableViewCellViewModel() {
		//given
		let indexPath = IndexPath(row: 1, section: 0)
		
		//when
		let cellViewModel = self.sut.titleTableViewCellViewModel(for: indexPath)
		
		//then
		XCTAssertEqual(cellViewModel.title, "Lisbon")
	}
}
