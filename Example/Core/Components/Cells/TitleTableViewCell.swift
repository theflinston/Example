//
//  TileTableViewCell.swift
//  Example
//
//  Created by Tiago Santos on 29/08/2018.
//  Copyright © 2018 Tiago Santos. All rights reserved.
//

import UIKit

class TitleTableViewCell: UITableViewCell {

	@IBOutlet private weak var titleLabel: UILabel!
	
	var viewModel: TitleTableViewCellViewModel! {
		didSet {
			self.configViewModel()
			self.updateInterface()
		}
	}
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
	
	private func configViewModel() {
		self.viewModel.updateInterface = self.updateInterface
	}
	
	private func updateInterface() {
		self.titleLabel.text = self.viewModel.title
	}
    
}
