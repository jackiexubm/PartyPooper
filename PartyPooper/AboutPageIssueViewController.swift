//
//  AboutPageIssueViewController.swift
//  PartyPooper
//
//  Created by David Kang on 1/11/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class AboutPageIssueViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    
    
    override func viewDidLoad() {
        collectionView?.backgroundColor = UIColor.white
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        super.viewDidLoad()
    
        collectionView?.register(IssueCell.self, forCellWithReuseIdentifier: "IssueCell")
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IssueCell", for: indexPath) as! IssueCell
        cell.buttonView.tag = indexPath.row
//        cell.lbl.
        return cell
    }
}
