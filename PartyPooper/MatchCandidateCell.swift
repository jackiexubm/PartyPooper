//
//  MatchCandidateCell.swift
//  PartyPooper
//
//  Created by David Kang on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class MatchCandidateCell: UICollectionViewCell {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let bottomCellseparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
        
    }()
    
    let profileView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = UIColor.red
        view.layer.borderWidth = 4
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 35
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameView: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.init(name: "HelveticaNeue-Medium", size: 25)
        return view
    }()
    
    
    let partyView: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textColor = UIColor.lightGray
        return view
    }()
    
    let matchPercentageView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "HelveticaNeue-Medium", size: 30)
//        label.backgroundColor = UIColor.red
        return label
    }()
    
    let buttonView: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.brown
        return view
        
    }()
    
    func setupViews(){
        addSubview(bottomCellseparator)
        addSubview(profileView)
        addSubview(nameView)
        addSubview(partyView)
        addSubview(matchPercentageView)
        
        addSubview(buttonView)
        
        
        
        addConstraintWithString("H:|[v0]|")
        addConstraintWithString("V:[v0(1)]|")
        
        
        addConstraintWithString("H:|-10-[v1(70)]-20-[v2]-10-|")
        addConstraintWithString("V:[v1(70)]")
        
        addConstraintWithString("V:|-20-[v2(20)]")
        
        addConstraintWithString("V:[v2]-[v3]-15-|")
        addConstraintWithString("H:[v1]-20-[v3]-|")
        
        addConstraintWithString("V:|-5-[v4]-10-|")
        addConstraintWithString("H:[v4]-10-|")
        
        addConstraintWithString("V:|[v5]|")
        addConstraintWithString("H:|[v5]|")
        addConstraint(NSLayoutConstraint(item: profileView, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint(item: matchPercentageView, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0))

        
        
        
        
    }
    
    
    
    func addConstraintWithString(_ str: String){
        let views: [String:UIView] = [
            "v0":bottomCellseparator,
            "v1":profileView,
            "v2":nameView,
            "v3":partyView,
            "v4":matchPercentageView,
            "v5":buttonView
        ]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: views))
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
