//
//  IssuesCell.swift
//  PartyPooper
//
//  Created by David Kang on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class IssueCell: UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        layer.borderWidth = 5
        layer.borderColor = UIColor.white.cgColor
        setupViews()
    }
    
    
    
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.green
        return view
        
    }()
    
    let buttonView: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(AboutViewController.openIssue(sender:)), for: .touchUpInside)
        return view
    
    }()
    
    
    
    func setupViews(){
        
        addSubview(containerView)
        containerView.addSubview(buttonView)
        addConstraintsWithString("H:|[v0]|")
        addConstraintsWithString("V:|[v0]|")
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("V:|[v1]|")
        
    }
    
    
    
        func addConstraintsWithString(_ str:String){
            addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": containerView, "v1":buttonView]))
        }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
