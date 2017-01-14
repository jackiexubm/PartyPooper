//
//  DonateViewController.swift
//  PartyPooper
//
//  Created by David Kang on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//


import UIKit


class DonateViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    

    override func viewDidLoad() {
        collectionView?.register(EventCell.self, forCellWithReuseIdentifier: "DonateCell")
        collectionView?.backgroundColor = UIColor(white: 237/255, alpha: 1)
        
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DonateCell", for: indexPath)
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)

    }
}
