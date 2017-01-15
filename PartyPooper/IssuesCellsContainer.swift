//
//  IssuesCell.swift
//  PartyPooper
//
//  Created by David Kang on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class IssuesCellsContainer: UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.yellow
        setupViews()
    }
    
    
    
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.green
        return view
        
    }()
    
    
    
    
    func setupViews(){
        
        addSubview(containerView)
        addConstraintsWithString("H:|[v0]|")
        addConstraintsWithString("V:|[v0]|")
        
        
    }
    
    
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": containerView]))
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
