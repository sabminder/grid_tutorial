//
//  Datasource.swift
//  GridLayout
//
//  Created by Sztanyi Szabolcs on 2016. 12. 04..
//  Copyright © 2016. Sabminder. All rights reserved.
//

import UIKit

class Datasource: NSObject, UICollectionViewDataSource {

    var carsToDisplay: [Car] = []

    override init() {
        super.init()

        carsToDisplay = [Car(objectID: "12", name: "Ferrari", price: 210000, salePrice: 188560, carDescription: "vknfblf kb lnkfndbf klnf dkl", image: UIImage(named: "ferrari")!),
                         Car(objectID: "13", name: "Audi R8", price: 170000, salePrice: nil, carDescription: "vknfblf kb lnkfndbf klnf dkl", image: UIImage(named: "audi r8")!),
                         Car(objectID: "14", name: "BMW 3", price: 42000, salePrice: 118000, carDescription: "vknfblf kb lnkfndbf klnf dkl", image: UIImage(named: "BMW 3")!),
                         Car(objectID: "15", name: "Mercedes GLA", price: 38000, salePrice: nil, carDescription: "vknfblf kb lnkfndbf klnf dkl", image: UIImage(named: "mercedes gla")!),
                         Car(objectID: "16", name: "Nissan GTR", price: 68000, salePrice: nil, carDescription: "vknfblf kb lnkfndbf klnf dkl", image: UIImage(named: "nissan gtr")!),
                         Car(objectID: "17", name: "Porsche Macan", price: 89000, salePrice: nil, carDescription: "vknfblf kb lnkfndbf klnf dkl", image: UIImage(named: "porsche macan")!)]

        carsToDisplay.sort(by: { $0.name < $1.name })
    }

    // MARK: collectionView methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carsToDisplay.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCollectionViewCell

        let car = carsToDisplay[indexPath.item]
        cell.imageView.image = car.image

        cell.nameLabel.text = car.name
        if let price = car.price {
            cell.priceLabel.text = "$ \(price)"
        }

        return cell
    }

}
