//
//  CampaignOverviewMentionsCell.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//
import UIKit

class CampaignOverviewMentionsCell: UICollectionViewCell{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let categoryLabel: UILabel = {
        let view: UILabel = UILabel()
        view.text = "Mentions"
        view.textColor = UIColor.gray
        view.font = UIFont(name: "STHeitiTC-Light", size: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.sizeToFit()
        view.textAlignment = NSTextAlignment.left
        return view
    }()
    
    let cellSeparator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(white: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let topCellSeparator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(white: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let arrowIcon: UIImageView = {
        let view: UIImageView = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = UIColor.gray
        view.image = #imageLiteral(resourceName: "next")
        return view
    }()
    
    let button: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(CampaignOverviewViewController.openMentions), for: .touchUpInside)
        return view
    }()
    
    let mentionImage: UIImageView = {
        let view: UIImageView = UIImageView()
        view.image = #imageLiteral(resourceName: "article_0_photo")
        view.contentMode = .scaleAspectFill
        view.layer.masksToBounds = true

        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
    }()
    
    let timeStampLabel: UILabel = {
        let view: UILabel = UILabel()
        view.numberOfLines = 1
        view.text = "March 30, 2016"
        view.font = UIFont(name: "HelveticaNeue", size: 11)
        view.textColor = UIColor(red: 200/255, green: 60/255, blue: 60/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let newsOutletNameLabel: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor.gray
        view.font = UIFont(name: "HelveticaNeue-Medium", size: 11)
        view.text = "The Washington Post"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let mentionTitleLabel: UILabel = {
        let view: UILabel = UILabel()
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor.black
        view.font = UIFont(name: "Georgia-Bold", size: 20)
        view.text = "Ralph Nader: Why Bernie Sanders was right to run as a Democrat."
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let authorLabel: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor.gray
        view.font = UIFont(name: "HelveticaNeue-Medium", size: 11)
        view.text = "By Ralph Nader"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupViews(){
        let contentViewHeight: CGFloat = 145
        let mentionImageWidth: CGFloat = contentViewHeight //* 4 / 3
        addSubview(categoryLabel)
        addSubview(cellSeparator)
        addSubview(arrowIcon)
        addSubview(mentionImage)
        addSubview(topCellSeparator)
        addSubview(timeStampLabel)
        addSubview(newsOutletNameLabel)
        addSubview(mentionTitleLabel)
        addSubview(authorLabel)
        addSubview(button)
        
        addConstraintsWithString("H:|-10-[v0(70)]")
        addConstraintsWithString("V:|-10-[v0(15)]-10-[v4]-15-|")
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("V:[v1(1)]|")
        addConstraintsWithString("V:[v2(20)]")
        addConstraintsWithString("H:[v2(20)]-15-|")
        addConstraint(NSLayoutConstraint(item: arrowIcon, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0))
        addConstraintsWithString("H:|[v3]|")
        addConstraintsWithString("V:|[v3]|")
        addConstraintsWithString("H:|-15-[v4(\(mentionImageWidth))]")
        addConstraintsWithString("H:|[v5]|")
        addConstraintsWithString("V:|[v5(1)]")
        addConstraintsWithString("H:[v4]-10-[v6]-5-[v2]")
        addConstraintsWithString("H:[v4]-10-[v7]-5-[v2]")
        addConstraintsWithString("H:[v4]-10-[v8]-5-[v2]")
        addConstraintsWithString("H:[v4]-10-[v9]-5-[v2]")
        addConstraintsWithString("V:|-35-[v6(12)]-2-[v7(14)][v8(<=86)][v9(14)]")
    }
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views:
            ["v0":categoryLabel,
             "v1":cellSeparator,
             "v2":arrowIcon,
             "v3":button,
             "v4":mentionImage,
             "v5":topCellSeparator,
             "v6":timeStampLabel,
             "v7":newsOutletNameLabel,
             "v8":mentionTitleLabel,
             "v9":authorLabel
            ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
