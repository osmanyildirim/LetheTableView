//
//  TableCell.swift
//  LetheTableView_Example
//
//  Created by Vizyoneks on 5.06.2019.
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
