//
//  LetheHeaderView.swift
//  LetheTableViewProtocol
//
//  Created by Osman YILDIRIM on 5.06.2019.
//

import UIKit

public protocol LetheTableViewDataSource {
    func numberOfSections(in letheTableView: UITableView) -> Int
    
    func letheTableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    
    func letheTableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    
    func letheTableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    
    func letheTableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    
    func letheTableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
}

public protocol LetheTableViewDelegate {
    func letheTableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    
    func letheTableView(_ tableView: UITableView, section: Int, didExpand header: LetheHeaderView)
    
    func letheTableView(_ tableView: UITableView, section: Int?, didCollapse header: LetheHeaderView)
}
