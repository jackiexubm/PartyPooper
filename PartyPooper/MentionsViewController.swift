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
    
    private let mentionModels: [MentionModel] = MentionModel.fillModel()
    
    override func viewDidLoad() {
        setupNavigationDropdownMenu()
        collectionView?.backgroundColor = UIColor(white: 237/255, alpha: 1)
        collectionView?.register(MentionCell.self, forCellWithReuseIdentifier: "MentionCell")
        
    }
    
    func openMention(sender: UIButton){
        let openedMentionVC = OpenedMentionViewController()
        let request: URLRequest = URLRequest(url: URL(string: mentionModels[sender.tag].URL)!)
        (openedMentionVC.view as! UIWebView).loadRequest(request)
        print(mentionModels[sender.tag].URL)
        navigationController?.pushViewController(openedMentionVC, animated: true)
    }
    
    // collectionView methods
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mentionModels.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MentionCell", for: indexPath) as! MentionCell
        cell.openMentionButton.tag = indexPath.row
        let currentModel: MentionModel = mentionModels[indexPath.row]
        cell.mentionPicture.image = currentModel.image
        cell.mentionTitleLabel.text = currentModel.title
        cell.authorAndNewsOutletLabel.text = "By " + currentModel.author.uppercased() + " • " + currentModel.newsOutletName.uppercased()
        cell.timeStampLabel.text = currentModel.publishDate
        cell.mentionPreviewLabel.text = currentModel.contentPreview
        cell.fairnessScoreLabel.text = String(currentModel.fairnessScore)
        cell.accuracyScoreLabel.text = String(currentModel.accuracyScore)
        cell.relevancyScoreLabel.text = String(currentModel.relevancyScore)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 460)
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

