//
//  IssuesCollectionViewFlowLayout.swift
//  PartyPooper
//
//  Created by David Kang on 1/11/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class IssuesCollectionViewFlowLayout: UICollectionViewFlowLayout{
    override init() {
        super.init()
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLayout()
    }
    
    func setupLayout() {
        minimumInteritemSpacing = 1
        minimumLineSpacing = 1
        scrollDirection = .vertical
    }
    
    override var itemSize: CGSize {
        set {
            
        }
        get {
            let numberOfColumns: CGFloat = 2
            
            let itemWidth = (self.collectionView!.frame.width - (numberOfColumns - 1)) / numberOfColumns
            return CGSize(width: itemWidth, height: itemWidth)
        }
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        let answer = super.layoutAttributesForElements(in: rect)
        if answer!.count > 1 {
            for i in 1..<answer!.count {
                let currentLayerAttributes: UICollectionViewLayoutAttributes = answer![i]
                let prevLayerAttributes: UICollectionViewLayoutAttributes = answer![i - 1]
                let maximumSpacing: CGFloat = 1
                let origin: CGFloat = prevLayerAttributes.frame.maxX
                
                if origin + maximumSpacing + currentLayerAttributes.frame.size.width < self.collectionViewContentSize.width {
                    var frame: CGRect = currentLayerAttributes.frame
                    frame.origin.x = origin + 1
                    currentLayerAttributes.frame = frame
                }
            }
        }
        return answer
    }
}
