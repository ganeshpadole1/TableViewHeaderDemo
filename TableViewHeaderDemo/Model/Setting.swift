//
//  Setting.swift
//  TableViewHeaderDemo
//
//  Created by ganesh padole on 26/11/21.
//

import UIKit

typealias Callback = () -> Void

struct SectionData {
    let type: HeaderType
    let headerImage: UIImage?
    let isSwitchAvailable: Bool?
    let item: [Setting]
    let action: Callback? 
}

enum HeaderType: String {
    case premium = "Premium"
    case inviteFriend = "Invite a Friend"
}

struct Setting {
    let title: String
    let logo: UIImage?
    
    init(title: String, logo: UIImage? = nil) {
        self.title = title
        self.logo = logo
    }
}
