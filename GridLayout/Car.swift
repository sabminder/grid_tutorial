//
//  Car.swift
//  GridLayout
//
//  Created by Sztanyi Szabolcs on 2016. 12. 04..
//  Copyright © 2016. Sabminder. All rights reserved.
//

import UIKit

class Car: NSObject {

    var objectID: String!
    var name: String!
    var price: NSNumber?
    var salePrice: NSNumber?
    var carDescription: String?
    var image: UIImage!

    init(objectID: String!, name: String?, price: NSNumber?, salePrice: NSNumber?, carDescription: String?, image: UIImage!) {
        self.objectID = objectID
        self.name = name
        self.price = price
        self.salePrice = salePrice
        self.carDescription = carDescription
        self.image = image
    }

}
