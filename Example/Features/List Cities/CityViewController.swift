//
//  ViewController.swift
//  Example
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import UIKit

class CityViewController: UIViewController, TableViewReusableCellsRegister {
	
	@IBOutlet private(set) weak var tableView: UITableView!
	
	var viewModel = CityViewModel()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		self.prepareInterface()
		self.viewModel.onViewDidLoad()
	}

	
	private func prepareInterface() {
		self.title = self.viewModel.title
		
		self.tableView.dataSource = self
		self.registerTitleTableViewCell()
		
		self.viewModel.updateInterface = self.updateInterface
	}

	private func updateInterface() {
		self.tableView.reloadData()
	}
	
}

extension CityViewController: UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return self.viewModel.numberOfSections
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.viewModel.numberOfRows(in: section)
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cellIdentifier = self.viewModel.cellIndentifier(at: indexPath)
		let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
		
		if let cell = cell as? TitleTableViewCell {
			cell.viewModel = self.viewModel.titleTableViewCellViewModel(for: indexPath)
		}
		
		return cell
	}
	
}
