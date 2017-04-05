//
//  DetailViewController.swift
//  GridLayout
//
//  Created by Sztanyi Szabolcs on 2017. 04. 05..
//  Copyright © 2017. Sabminder. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!

    var selectedCar: Car!

    // MARK: view methods
    override func viewDidLoad() {
        super.viewDidLoad()

        title = selectedCar.name
        imageView.image = selectedCar.image

        if let price = selectedCar.price {
            priceLabel.text = "$ \(price)"
        } else {
            priceLabel.isHidden = true
        }
    }
    
}
