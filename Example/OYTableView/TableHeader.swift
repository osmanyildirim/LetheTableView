//
//  TableHeader.swift
//  OYTableView_Example
//
//  Created by osmanyildirim on 02/27/2021.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

final class TableHeader: UIView {
    @IBOutlet private weak var lblHeader: UILabel!

    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }

    func configure(_ text: String) {
        lblHeader.text = text
    }
}
