//
//  ViewController.swift
//  GridLayout
//
//  Created by Sztanyi Szabolcs on 2016. 11. 01..
//  Copyright © 2016. Sabminder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var columnChangerButton: UIBarButtonItem!

    var gridLayout: GridLayout!
    lazy var listLayout: ListLayout = {
        var listLayout = ListLayout(itemHeight: 280)
        return listLayout
    }()

    var dataSource: Datasource!

    @IBAction func changeNumberOfColumns() {
        if gridLayout.numberOfColumns == 3 {
            gridLayout.numberOfColumns = 2
        } else {
            gridLayout.numberOfColumns = 3
        }

        gridLayout.invalidateLayout()
    }

    @IBAction func changeLayout() {
        if collectionView.collectionViewLayout == gridLayout {
            // list layout
            columnChangerButton.isEnabled = false
            UIView.animate(withDuration: 0.1, animations: {
                self.collectionView.collectionViewLayout.invalidateLayout()
                self.collectionView.setCollectionViewLayout(self.listLayout, animated: false)
            })
        } else {
            // grid layout
            columnChangerButton.isEnabled = true
            UIView.animate(withDuration: 0.1, animations: {
                self.collectionView.collectionViewLayout.invalidateLayout()
                self.collectionView.setCollectionViewLayout(self.gridLayout, animated: false)
            })
        }
    }

    // MARK: view methods
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Cars"

        dataSource = Datasource()
        collectionView.dataSource = dataSource

        gridLayout = GridLayout(numberOfColumns: 2)
        collectionView.collectionViewLayout = gridLayout
        collectionView.reloadData()
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        collectionView.collectionViewLayout.invalidateLayout()
    }
    
}
