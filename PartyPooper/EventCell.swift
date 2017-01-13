//
//  EventCell.swift
//  PartyPooper
//
//  Created by David Kang on 1/13/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class EventCell: UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    
    
    let topSeperator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    
    }()
    
    let bottomSeperator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    
    
    func setupViews(){
        addSubview(topSeperator)
        addSubview(bottomSeperator)
        
        addConstraintWithString("H:|[v0]|")
        addConstraintWithString("V:|[v0(1)]")

        addConstraintWithString("H:|[v1]|")
        addConstraintWithString("V:[v1(1)]|")
    }
    
    func addConstraintWithString(_ str: String){
        let views: [String:UIView] = [
            "v0":topSeperator,
            "v1":bottomSeperator,
        ]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: views))
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
