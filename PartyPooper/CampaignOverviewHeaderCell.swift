//
//  View.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class CampaignOverviewHeaderCell: UICollectionViewCell{
    static let profileImageDiameter: CGFloat = 120
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let profileImageView: UIImageView = {
        let view: UIImageView = UIImageView()
        
        view.image = #imageLiteral(resourceName: "bernie_profile")
        view.contentMode = .scaleAspectFill

        view.backgroundColor = UIColor.red
        view.layer.borderWidth = 4
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = profileImageDiameter / 2
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let profileShadowView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor.lightGray
        view.layer.cornerRadius = profileImageDiameter / 2 + 2

        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let cellSeparator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(white: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let sloganLabel: UILabel = {
        let view: UILabel = UILabel()
        view.numberOfLines = 0
        view.text = "\"A political revolution is coming\""
        view.textColor = UIColor.gray
        view.font = UIFont(name: "Arial-ItalicMT", size: 18)
        view.textAlignment = NSTextAlignment.center
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setupViews(){
        addSubview(profileShadowView)
        addSubview(profileImageView)
        addSubview(cellSeparator)
        addSubview(sloganLabel)
        
        
        addConstraintsWithString("H:[v2(\(CampaignOverviewHeaderCell.profileImageDiameter))]")
        addConstraintsWithString("V:|-15-[v2(\(CampaignOverviewHeaderCell.profileImageDiameter))]")
        addConstraint(NSLayoutConstraint(item: profileShadowView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 1))

        addConstraintsWithString("H:[v0(\(CampaignOverviewHeaderCell.profileImageDiameter))]")
        addConstraintsWithString("V:|-15-[v0(\(CampaignOverviewHeaderCell.profileImageDiameter))]")
        addConstraint(NSLayoutConstraint(item: profileImageView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0))
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("V:[v1(1)]|")
        
        addConstraintsWithString("H:|-20-[v3]-20-|")
        addConstraintsWithString("V:[v3(20)]-5-|")
    }
    
    
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: [
            "v0":profileImageView,
            "v1":cellSeparator,
            "v2":profileShadowView,
            "v3":sloganLabel
        ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
