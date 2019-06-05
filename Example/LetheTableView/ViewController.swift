//
//  ViewController.swift
//  LetheTableView
//
//  Created by yildirimosman@outlook.com on 06/05/2019.
//  Copyright (c) 2019 yildirimosman@outlook.com. All rights reserved.
//

import UIKit
import LetheTableView

final class ViewController: UIViewController {

    @IBOutlet weak var tableView: LetheTableView!

    private let headers = ["First Image", "Second Image", "Third Image", "Fourth Image"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "TableCell", bundle: nil), reuseIdentifier: "TableCell")
    }
}

extension ViewController: LetheTableViewDataSource, LetheTableViewDelegate {
    func numberOfSections(in letheTableView: UITableView) -> Int {
        return 1
    }

    func letheTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headers.count
    }

    func letheTableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    func letheTableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func letheTableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = TableHeader(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40))
        headerView.configure(headers[section])
        return headerView
    }

    func letheTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as? TableCell
        cell?.configure(UIImage(named: String(indexPath.row))!)
        return cell ?? UITableViewCell()
    }

    func letheTableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

    func letheTableView(_ tableView: UITableView, section: Int, didExpand header: LetheHeaderView) {

    }

    func letheTableView(_ tableView: UITableView, section: Int?, didCollapse header: LetheHeaderView) {

    }
}
