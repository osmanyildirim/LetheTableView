//
//  ViewController.swift
//  OYTableView
//
//  Created by osmanyildirim on 02/27/2021.
//  Copyright (c) 2021 osmanyildirim. All rights reserved.
//

import UIKit
import OYTableView

final class ViewController: UIViewController {

    @IBOutlet private weak var tableView: OYTableView!
    
    private let headers = ["First Image", "Second Image", "Third Image", "Fourth Image"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "TableCell", bundle: nil), reuseIdentifier: "TableCell")
    }
}

extension ViewController: OYTableViewDataSource, OYTableViewDelegate {
    func numberOfSections(in oyTableView: UITableView) -> Int {
        return 1
    }

    func oyTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headers.count
    }

    func oyTableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    func oyTableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    func oyTableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = TableHeader(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
        headerView.configure(headers[section])
        return headerView
    }

    func oyTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as? TableCell
        cell?.configure(UIImage(named: String(indexPath.row))!)
        return cell ?? UITableViewCell()
    }

    func oyTableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    func oyTableView(_ tableView: UITableView, section: Int, didExpand header: OYHeaderView) {

    }

    func oyTableView(_ tableView: UITableView, section: Int?, didCollapse header: OYHeaderView) {

    }
}
