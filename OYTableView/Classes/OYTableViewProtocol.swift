//
//  OYHeaderView.swift
//  OYTableViewProtocol
//
//  Created by Osman YILDIRIM on 5.06.2019.
//

import UIKit

public protocol OYTableViewDataSource {
    func numberOfSections(in oyTableView: UITableView) -> Int

    func oyTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int

    func oyTableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat

    func oyTableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat

    func oyTableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?

    func oyTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
}

public protocol OYTableViewDelegate {
    func oyTableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)

    func oyTableView(_ tableView: UITableView, section: Int, didExpand header: OYHeaderView)

    func oyTableView(_ tableView: UITableView, section: Int?, didCollapse header: OYHeaderView)
}
