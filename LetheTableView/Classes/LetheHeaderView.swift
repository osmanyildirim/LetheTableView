//
//  LetheHeaderView.swift
//  LetheHeaderView
//
//  Created by Osman YILDIRIM on 5.06.2019.
//

import UIKit

public class LetheHeaderView: UITableViewHeaderFooterView {
    private var expanded: Bool = false
    private var section: Int!
    private var tableView: LetheTableView!
    
    override public func awakeFromNib() {
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.selected)))
    }
    
    @objc private func selected(gestureRecognizer: UITapGestureRecognizer) {
        tableView.select(header: self, section: section, expanded: !self.expanded)
    }
    
    public func getExpanded() -> Bool {
        return expanded
    }
    
    public func setExpanded(_ value: Bool) {
        self.expanded = value
    }
    
    public func Init(section: Int, tableView: LetheTableView) {
        self.section = section
        self.tableView = tableView
        self.tag = section
    }
}
