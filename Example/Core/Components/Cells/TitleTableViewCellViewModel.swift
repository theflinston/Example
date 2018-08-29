//
//  TitleTableViewCellViewModel.swift
//  Example
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//



class TitleTableViewCellViewModel {

	var updateInterface: (() -> Void)? //not used for the moment. this is just as and example how the view model could interact with the interface without knowing who is the interface.
	
	let title: String
	
	init(title: String) {
		self.title = title
	}
}
