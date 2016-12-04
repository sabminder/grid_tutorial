//
//  ImageCollectionViewCell.swift
//  GridLayout
//
//  Created by Sztanyi Szabolcs on 2016. 11. 08..
//  Copyright © 2016. Sabminder. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    override func prepareForReuse() {
        super.prepareForReuse()

        imageView.image = nil
    }

}
