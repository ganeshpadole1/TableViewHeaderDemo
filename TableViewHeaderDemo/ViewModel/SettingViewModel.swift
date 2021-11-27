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
                            isSwitchAvailable: false,
                            item: [
                                Setting(title: "My Profile", logo: nil),
                                Setting(title: "Notifications", logo: nil),
                                Setting(title: "Security", logo: nil),
                                Setting(title: "Payments", logo: nil)
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
