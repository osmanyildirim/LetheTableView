//
//  TableCell.swift
//  OYTableView_Example
//
//  Created by osmanyildirim on 02/27/2021.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    @IBOutlet private weak var imgView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(_ image: UIImage) {
        imgView.image = image
    }
}
