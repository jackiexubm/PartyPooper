//
//  MentionCell.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class MentionCell: UICollectionViewCell{
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
        backgroundColor = UIColor.white
    }
    
    let topCellSeperator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(white: 227/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bottomCellSeperator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(white: 227/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let openMentionButton: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(MentionsViewController.openMention(sender:) ), for: .touchUpInside)
        return view
    }()
    
    func setupViews(){
        
        addSubview(topCellSeperator)
        addSubview(bottomCellSeperator)
        addSubview(openMentionButton)
        addConstraintWithString("H:|[v0]|")
        addConstraintWithString("V:|[v0(1)]")
        addConstraintWithString("H:|[v1]|")
        addConstraintWithString("V:[v1(1)]|")
        addConstraintWithString("H:|[v2]|")
        addConstraintWithString("V:|[v2]-1-|")
        
        
    }
    
    func addConstraintWithString(_ str: String){
        let views: [String:UIView] = [
        "v0":topCellSeperator,
        "v1":bottomCellSeperator,
        "v2":openMentionButton
        ]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: views))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
