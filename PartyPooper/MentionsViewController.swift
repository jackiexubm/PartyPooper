//
//  MentionsViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit
import BTNavigationDropdownMenu


class MentionsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    override func viewDidLoad() {
        setupNavigationDropdownMenu()
        collectionView?.backgroundColor = UIColor(white: 245/255, alpha: 1)
        collectionView?.register(MentionCell.self, forCellWithReuseIdentifier: "MentionCell")
    }
    
    
    
    func openMention(sender: UIButton){
        let openedMentionVC = OpenedMentionViewController()
        
        navigationController?.pushViewController(openedMentionVC, animated: true)
    }
    
    // collectionView methods
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MentionCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 450)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 7
    }
    
    func setupNavigationDropdownMenu(){
        let items = ["Top", "Latest", "Trending"]
        let dropdownNav = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Top Mentions", items: items as [AnyObject])
        
        dropdownNav.cellTextLabelFont = UIFont(name: "HelveticaNeue-Light", size: 18)
        dropdownNav.navigationBarTitleFont = UIFont(name: "HelveticaNeue-Light", size: 20)
        dropdownNav.cellTextLabelAlignment = NSTextAlignment.center
        dropdownNav.cellSeparatorColor = UIColor.lightGray
        dropdownNav.arrowTintColor = UIColor.black
        dropdownNav.shouldChangeTitleText = true
        dropdownNav.arrowPadding = 13
        dropdownNav.shouldKeepSelectedCellColor = true
        dropdownNav.selectedCellTextLabelColor = UIColor.white
        
        navigationItem.titleView = dropdownNav
    }
    
}

