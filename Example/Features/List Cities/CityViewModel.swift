//
//  CityViewModel.swift
//  Example
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import UIKit

class CityViewModel {
	
	//this is here just to auxiliar the example
	//This would be replaced by a service class that would make a async request parce the info into a struct
	private let cities = ["London", "Lisbon", "Paris", "Madrid", "Amsterdam"]
	
	var updateInterface: (() -> Void)?

	let title: String = "CITIES_SCREEN_TITLE".localized
	
	func onViewDidLoad() {
		self.updateInterface?()
	}
	
}

//Table view auxiliar functions
extension CityViewModel {
	
	var numberOfSections: Int {
		return 1
	}
	
	func numberOfRows(in section: Int) -> Int {
		return self.cities.count
	}
	
	func cellIndentifier(at indexPath: IndexPath) -> String {
		return String(describing: TitleTableViewCell.self)
	}
	
	func titleTableViewCellViewModel(for indexPath: IndexPath) -> TitleTableViewCellViewModel {
		let cityName = self.cities[indexPath.item]
		return TitleTableViewCellViewModel(title: cityName)
	}
}
