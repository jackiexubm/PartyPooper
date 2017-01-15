//
//  AboutViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//
import UIKit

class AboutViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let sampleIssueModels: [IssueModel] = IssueModel.sampleModel()
    
    override func viewDidLoad() {
        collectionView?.register(CampaignHeaderCell.self, forCellWithReuseIdentifier: "CampaignHeaderCell")
        collectionView?.register(IssuesCellsContainer.self, forCellWithReuseIdentifier: "IssuesCellsContainer")
        collectionView?.backgroundColor = UIColor.white
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell: UICollectionViewCell = UICollectionViewCell()
        if indexPath.row == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CampaignHeaderCell", for: indexPath)
        } else if indexPath.row == 1 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IssuesCellsContainer", for: indexPath)
            addVC(cell: cell as! IssuesCellsContainer)
        }
        return cell
    }
    
    func openIssue(sender: UIButton){
        let openedIssueVC: OpenedIssueViewController = OpenedIssueViewController()
        ((openedIssueVC.view) as! OpenedIssueView).issueNameLabel.text = (childViewControllers[0] as! AboutPageIssueViewController).sampleIssueModels[sender.tag].issueName
        ((openedIssueVC.view) as! OpenedIssueView).contentLabel.text = (childViewControllers[0] as! AboutPageIssueViewController).sampleIssueModels[sender.tag].issueContent
        navigationController?.pushViewController(openedIssueVC, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellSize = CGSize()
        if indexPath.row == 0 {
            return CGSize(width: collectionView.frame.width, height: 375)
        } else if indexPath.row == 1 {
            let cellHeight = CGFloat(sampleIssueModels.count / 2) * collectionView.frame.width / 2
            return CGSize(width: collectionView.frame.width, height: cellHeight)
            
        }
        return cellSize
    }
    
    func addVC(cell: IssuesCellsContainer){
        let childVC = AboutPageIssueViewController(collectionViewLayout: IssuesCollectionViewFlowLayout())
        self.addChildViewController(childVC)
        childVC.didMove(toParentViewController: self)
        
        cell.containerView.addSubview(childVC.collectionView!)
        cell.containerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":childVC.collectionView!]))
        cell.containerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":childVC.collectionView!]))
    }
}
