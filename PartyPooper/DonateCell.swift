//
//  DonateCell.swift
//  PartyPooper
//
//  Created by David Kang on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit


class DonateCell: UICollectionViewCell  {
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
}
    let donateLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    
    }()
    
    func setupViews(){
        addSubview(donateLabel)
        
        addConstraintWithString("H:|[v0(40)]|")
        addConstraintWithString("V:|-20-[v0]-|")
        
        
        
        
    }
    
    func addConstraintWithString(_ str: String){
        let views: [String:UIView] = [
            "v0":donateLabel,
        
        ]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: views))
    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }






}
