//
//  SettingViewModel.swift
//  TableViewHeaderDemo
//
//  Created by ganesh padole on 26/11/21.
//

import UIKit

struct SettingViewModel {
    
    var sectionData: [SectionData] {
        get {
            return [
                SectionData(type: .premium,
                            headerImage: nil,
                            isSwitchAvailable: true,
                            item: [
                                Setting(title: "My Profile", logo: UIImage(named: "home")),
                                Setting(title: "Notifications", logo: UIImage(named: "home")),
                                Setting(title: "Security", logo: UIImage(named: "home")),
                                Setting(title: "Payments", logo: UIImage(named: "home"))
                            ], action:{
                                
                            }
                           ),
                SectionData(type: .inviteFriend,
                            headerImage: nil,
                            isSwitchAvailable: false,
                            item:[
                                Setting(title: "Blogs", logo: nil),
                                Setting(title: "Contact us", logo: nil),
                                Setting(title: "Privacy Policy", logo: nil),
                            ], action:{
                                
                            }
                           )
                
            ]
        }
    }
   
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
