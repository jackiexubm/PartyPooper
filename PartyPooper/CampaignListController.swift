//
//  CampaignListController.swift
//  PartyPooper
//
//  Created by David Kang on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class CampaignListController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let sampleIssueModels: [CandidateModel] = CandidateModel.newModel()
    
    
    
    override func viewDidLoad(){
        collectionView?.register(CampaignListCell.self, forCellWithReuseIdentifier: "CampaignListCell")
        collectionView?.backgroundColor = UIColor.white
        //        let searchController = UISearchController(searchResultsController: nil)
        //        searchController.searchResultsUpdater =
        //        searchController.dimsBackgroundDuringPresentation = false
        //        definesPresentationContext = true
        //        let header = collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind: String, at: IndexPath)
        //        header = searchController.searchBar
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleIssueModels.count    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignListCell", for: indexPath) as! CampaignListCell
        cell.profileView.image = (sampleIssueModels[indexPath.row].profileView)
        cell.nameView.text = (sampleIssueModels[indexPath.row].nameView)
        cell.partyView.text = (sampleIssueModels[indexPath.row].partyName)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 80)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
