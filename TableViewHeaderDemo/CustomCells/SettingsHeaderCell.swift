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
    
    @IBOutlet weak var switchControl: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    
    func setupHeader(_ sectionData: SectionData) {
        titleLabel.text = sectionData.type.rawValue
        if !sectionData.isSwitchAvailable {
            switchControl.isHidden = true
        }
        guard let image = sectionData.headerImage else { return }
        headerImageView.image = image
    }
    
}
