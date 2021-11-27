//
//  SettingViewModel.swift
//  TableViewHeaderDemo
//
//  Created by ganesh padole on 26/11/21.
//

import UIKit

struct SettingViewModel {
    
    var settings = [Setting]()
    
    var sectionData: [SectionData] {
        get {
            return [
                SectionData(type: .premium,
                            headerImage: nil,
                            isSwitchAvailable: false,
                            item: [
                                Setting(title: "Account", logo: nil),
                                Setting(title: "Payment Methods", logo: nil),
                                Setting(title: "Security", logo: nil),
                                Setting(title: "Limits", logo: nil)
                            ]
                           ),
                SectionData(type: .inviteFriend,
                            headerImage: nil,
                            isSwitchAvailable: false,
                            item:[
                                Setting(title: "Account", logo: nil),
                                Setting(title: "Payment Methods", logo: nil),
                                Setting(title: "Security", logo: nil),
                                Setting(title: "Limits", logo: nil)
                            ]
                           )
                
            ]
        }
    }
    
    
    //    init () {
    //        settings.append(Setting(title: "Account", logo: nil))
    //        settings.append(Setting(title: "Payment Methods", logo: nil))
    //        settings.append(Setting(title: "Security", logo: nil))
    //        settings.append(Setting(title: "Limits", logo: nil))
    //        settings.append(Setting(title: "Notifications", logo: nil))
    //        settings.append(Setting(title: "Reports", logo: nil))
    //        settings.append(Setting(title: "Account", logo: nil))
    //    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return sectionData[section].item.count
    }
    
    func numberOfSection() -> Int {
        return sectionData.count
    }
    
    func titleForHeaderInSection(_ section: Int) -> String {
        return sectionData[section].type.rawValue
    }
}
