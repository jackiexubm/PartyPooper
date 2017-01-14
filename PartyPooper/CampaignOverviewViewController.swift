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
        navigationItem.title = "Bernie Sanders"
        collectionView?.register(CampaignOverviewHeaderCell.self, forCellWithReuseIdentifier: "CampaignOverviewHeaderCell")
        collectionView?.register(CampaignOverviewAboutCell.self, forCellWithReuseIdentifier: "CampaignOverviewAboutCell")
        collectionView?.register(CampaignOverviewMentionsCell.self, forCellWithReuseIdentifier: "CampaignOverviewMentionsCell")
        collectionView?.register(CampaignOverviewEventsCell.self, forCellWithReuseIdentifier: "CampaignOverviewEventsCell")
        collectionView?.register(CampaignOverviewDonateCell.self, forCellWithReuseIdentifier: "CampaignOverviewDonateCell")
        collectionView?.backgroundColor = UIColor(white: 237/255, alpha: 1)
    }
    
    func openAbout(){
        let newVC = AboutViewController(collectionViewLayout: UICollectionViewFlowLayout())
        navigationController?.pushViewController(newVC, animated: true)
    }
    
    func openMentions(){
        let newVC = MentionsViewController(collectionViewLayout: UICollectionViewFlowLayout())
        navigationController?.pushViewController(newVC, animated: true)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell: UICollectionViewCell = UICollectionViewCell()
        if indexPath.row == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignOverviewHeaderCell", for: indexPath)
        } else if indexPath.row == 1 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignOverviewAboutCell", for: indexPath)
        } else if indexPath.row == 2 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignOverviewMentionsCell", for: indexPath)
        } else if indexPath.row == 3 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignOverviewEventsCell", for: indexPath)
        } else if indexPath.row == 4 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignOverviewDonateCell", for: indexPath)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: collectionView.frame.width, height: 180)
        } else if indexPath.row == 1 {
            return CGSize(width: collectionView.frame.width, height: 180)
        } else if indexPath.row == 2 {
            return CGSize(width: collectionView.frame.width, height: 180)
        } else if indexPath.row == 3 {
            return CGSize(width: collectionView.frame.width, height: 180)
        } else if indexPath.row == 4 {
            return CGSize(width: collectionView.frame.width, height: 180)
        }
        return CGSize()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 7
    }
    
}
