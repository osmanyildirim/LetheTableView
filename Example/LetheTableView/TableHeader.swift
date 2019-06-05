//
//  TableHeader.swift
//  LetheTableView_Example
//
//  Created by Vizyoneks on 5.06.2019.
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
