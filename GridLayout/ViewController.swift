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

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)

        let selectedCar = dataSource.carAtIndexPath(indexPath)
        // 1. Do it with the segue
        performSegue(withIdentifier: "selectCar", sender: selectedCar)

        // 2. Do it manually
//        if let destinationController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailVC") as? DetailViewController {
//            destinationController.selectedCar = selectedCar
//            navigationController?.pushViewController(destinationController, animated: true)
//        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectCar" {
            if let selectedCar = sender as? Car, let destinationViewController = segue.destination as? DetailViewController {
                destinationViewController.selectedCar = selectedCar
            }
        }
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        collectionView.collectionViewLayout.invalidateLayout()
    }
    
}
