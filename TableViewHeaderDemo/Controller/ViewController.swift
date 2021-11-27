//
//  ViewController.swift
//  TableViewHeaderDemo
//
//  Created by ganesh padole on 26/11/21.
//

import UIKit

class ViewController: UIViewController {

    let viewModel = SettingViewModel()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName: SettingsHeaderCell.identifier, bundle: nil), forCellReuseIdentifier: SettingsHeaderCell.identifier)
        self.tableView.register(UINib(nibName: SettingsCell.identifier, bundle: nil), forCellReuseIdentifier: SettingsCell.identifier)

    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "SettingsHeaderCell") as! SettingsHeaderCell
        headerCell.contentView.backgroundColor = .red
        headerCell.setupHeader(viewModel.sectionData[section])
        return headerCell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 58
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSection()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingsCell.identifier) as? SettingsCell else {
            fatalError("error during dequing")
        }
    
        let setting = viewModel.sectionData[indexPath.section].item[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        cell.setup(setting)
        return cell
    }
}
