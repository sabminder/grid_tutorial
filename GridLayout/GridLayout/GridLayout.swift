//
//  GridLayout.swift
//  GridLayout
//
//  Created by Sztanyi Szabolcs on 2016. 11. 01..
//  Copyright © 2016. Sabminder. All rights reserved.
//

import UIKit

class GridLayout: UICollectionViewFlowLayout {

    private var numberOfColumns: Int = 3

    init(numberOfColumns: Int) {
        super.init()
        minimumLineSpacing = 1
        minimumInteritemSpacing = 1

        self.numberOfColumns = numberOfColumns
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override var itemSize: CGSize {
        get {
            if let collectionView = collectionView {
                let itemWidth: CGFloat = (collectionView.frame.width/CGFloat(self.numberOfColumns)) - self.minimumInteritemSpacing
                let itemHeight: CGFloat = 100.0
                return CGSize(width: itemWidth, height: itemHeight)
            }

            return CGSize(width: 100, height: 100)
        }
        set {
            super.itemSize = newValue
        }
    }

    override func targetContentOffset(forProposedContentOffset proposedContentOffset: CGPoint) -> CGPoint {
        return CGPoint.zero
    }

}
