//
//  TableViewReusableCellsRegister.swift
//  Example
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import UIKit

extension UINib {
	convenience init(nibName name: String) {
		self.init(nibName: name, bundle: nil)
	}
}

protocol TableViewReusableCellsRegister {
	func registerTitleTableViewCell()
}

extension TableViewReusableCellsRegister where Self: CityViewController {
	func registerTitleTableViewCell() {
		let cellIdentifier = String(describing: TitleTableViewCell.self)
		registerCell(cellIdentifier: cellIdentifier)
	}
	
	func registerCell(cellIdentifier: String) {
		let nib = UINib(nibName: cellIdentifier)
		self.tableView.register(nib,
								forCellReuseIdentifier: cellIdentifier)
	}
}
