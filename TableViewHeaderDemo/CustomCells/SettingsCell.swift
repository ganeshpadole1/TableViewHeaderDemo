//
//  SettingsCell.swift
//  TableViewHeaderDemo
//
//  Created by ganesh padole on 27/11/21.
//

import UIKit

class SettingsCell: UITableViewCell {

    @IBOutlet weak var settingLogo: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setup(_ setting: Setting) {
        titleLabel.text = setting.title
        guard let image = setting.logo else {
            settingLogo.isHidden = true
            return
        }
        settingLogo.tintColor = .black
        settingLogo.image = UIImage(named: "home")
    }
    
}
