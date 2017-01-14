//
//  CampaignOverviewMentionsCell.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//
import UIKit

class CampaignOverviewEventsCell: UICollectionViewCell{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let categoryLabel: UILabel = {
        let view: UILabel = UILabel()
        view.text = "Events"
        view.textColor = UIColor.gray
        view.font = UIFont(name: "STHeitiTC-Light", size: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.sizeToFit()
        view.textAlignment = NSTextAlignment.left
        return view
    }()
    
    let cellSeperator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(white: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let arrowIcon: UIImageView = {
        let view: UIImageView = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = UIColor.gray
        view.image = #imageLiteral(resourceName: "right_arrow")
        return view
    }()
    
    let topCellSeparator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(white: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let button: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setupViews(){
        addSubview(categoryLabel)
        addSubview(arrowIcon)
        addSubview(topCellSeparator)
        addSubview(cellSeperator)
        
        addSubview(button)
        
        addConstraintsWithString("H:|-10-[v0(70)]")
        addConstraintsWithString("V:|-10-[v0(15)]")
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("V:[v1(1)]|")
        addConstraintsWithString("V:[v2(20)]")
        addConstraintsWithString("H:[v2(20)]-15-|")
        addConstraint(NSLayoutConstraint(item: arrowIcon, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0))
        addConstraintsWithString("H:|[v3]|")
        addConstraintsWithString("V:|[v3]|")
        addConstraintsWithString("H:|[v4]|")
        addConstraintsWithString("V:|[v4(1)]")
    }
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views:
            ["v0":categoryLabel,
             "v1":cellSeperator,
             "v2":arrowIcon,
             "v3":button,
             "v4":topCellSeparator
            ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
