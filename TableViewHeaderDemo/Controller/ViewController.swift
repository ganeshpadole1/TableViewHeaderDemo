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
        
        self.tableView.registerHeaderAndFooter(type: SettingsHeaderCell.self, identifier: "SettingsHeaderCell", bundle: nil)
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSection()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else {
            fatalError("error during dequing")
        }
    
        cell.textLabel?.text = viewModel.sectionData[indexPath.section].item[indexPath.row].title
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
