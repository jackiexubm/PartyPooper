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
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        super.viewDidLoad()
        
        collectionView?.register(IssuesCell.self, forCellWithReuseIdentifier: "IssuesCell")
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IssuesCell", for: indexPath)
        print(indexPath.row)    
        return cell
    }
    
    

}
