//
//  ViewController.swift
//  GridLayout
//
//  Created by Sztanyi Szabolcs on 2016. 11. 01..
//  Copyright © 2016. Sabminder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!

    var gridLayout: GridLayout = GridLayout(numberOfColumns: 4)

    var imagesToDisplay: [UIImage] = [UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!, UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!,
                                      UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!, UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!,
                                      UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!, UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!,
                                      UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!, UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!,
                                      UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!, UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!,
                                      UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!, UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!,
                                      UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!, UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!,
                                      UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!, UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!,
                                      UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!, UIImage(named: "IMG_1411")!, UIImage(named: "IMG_1408")!]

    // MARK: view methods
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Images"

        collectionView.collectionViewLayout = gridLayout
        collectionView.reloadData()
    }

    // MARK: collectionView methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesToDisplay.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCollectionViewCell

        let image = imagesToDisplay[indexPath.item]
        cell.imageView.image = image

        return cell
    }

}
