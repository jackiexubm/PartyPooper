//
//  AboutViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class AboutViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{

    override func viewDidLoad() {
        collectionView?.register(CampaignHeaderCell.self, forCellWithReuseIdentifier: "CampaignHeaderCell")
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(IssuesCell.self, forCellWithReuseIdentifier: "IssuesCell")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell: UICollectionViewCell = UICollectionViewCell()
        if indexPath.row == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignHeaderCell", for: indexPath)
        } else if indexPath.row == 1 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IssuesCell", for: indexPath)
        }
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var cellSize = CGSize()
        if indexPath.row == 0 {
            return CGSize(width: collectionView.frame.width, height: 375)
        } else if indexPath.row == 1 {
            return CGSize(width: collectionView.frame.width, height: 200)
        }
        return cellSize
    }
    
}
