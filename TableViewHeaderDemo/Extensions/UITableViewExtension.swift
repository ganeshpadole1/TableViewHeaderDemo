//
//  UITableViewExtension.swift
//  TableViewHeaderDemo
//
//  Created by ganesh padole on 27/11/21.
//

import UIKit

extension NSObject {
    static var identifier: String {
        get {
            "\(self)"
        }
    }
}

extension UITableView {
    
    func registerHeaderAndFooter(type: AnyClass, identifier: String, bundle: Bundle? = nil) {
        if (bundle ?? .main).path(forResource: identifier, ofType: "nib") != nil {
            register(UINib(nibName: identifier, bundle: bundle), forHeaderFooterViewReuseIdentifier: identifier)
        } else {
            register(type, forHeaderFooterViewReuseIdentifier: identifier)
        }
    }
    
    func registerCell(type: AnyClass, identifier: String, bundle: Bundle? = nil) {
        if (bundle ?? .main).path(forResource: identifier, ofType: "nib") != nil {
            register(UINib(nibName: identifier, bundle: bundle), forCellReuseIdentifier: identifier)
        } else {
            register(type, forCellReuseIdentifier: identifier)
        }
    }
}
