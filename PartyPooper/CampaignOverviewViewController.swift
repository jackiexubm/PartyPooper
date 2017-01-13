//
//  CampaignOverviewViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/13/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class CampaignOverviewViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    override func viewDidLoad() {
        collectionView?.register(CampaignOverviewHeaderCell.self, forCellWithReuseIdentifier: "CampaignOverviewHeaderCell")
        collectionView?.backgroundColor = UIColor.white
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell: UICollectionViewCell = UICollectionViewCell()
        if indexPath.row == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignOverviewHeaderCell", for: indexPath)
        } else if indexPath.row == 1 {
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
            print("ran")
            print(collectionView.frame.width)
            return CGSize(width: collectionView.frame.width, height: 375)
        } else if indexPath.row == 1 {
            
        }
        return CGSize()
    }
    
}
