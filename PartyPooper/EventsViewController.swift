//
//  EventsViewController.swift
//  PartyPooper
//
//  Created by David Kang on 1/13/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class EventsViewController: UICollectionViewController {
    override func viewDidLoad() {
        collectionView?.register(EventCell.self, forCellWithReuseIdentifier: "EventsCell")
        
    }



    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventsCell", for: indexPath)
        
        return cell
    }

    
    
    
}

