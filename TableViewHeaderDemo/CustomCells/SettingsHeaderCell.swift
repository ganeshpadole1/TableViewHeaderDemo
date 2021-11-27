//
//  SettingsHeaderCell.swift
//  TableViewHeaderDemo
//
//  Created by ganesh padole on 26/11/21.
//

import UIKit

class SettingsHeaderCell: UITableViewCell {

    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    
        backgroundColor = .red
    }

    
    func setupHeader(_ sectionData: SectionData) {
        titleLabel.text = "dddd"
        guard let image = sectionData.headerImage else { return }
        headerImageView.image = image
    }
    
}
