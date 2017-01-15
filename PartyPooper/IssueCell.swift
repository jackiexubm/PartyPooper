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
        setupViews()
    }
    

    
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    let buttonView: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(AboutViewController.openIssue(sender:)), for: .touchUpInside)
        return view
    
    }()
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0 
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    let borderView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        view.layer.borderColor = UIColor.purple.cgColor
        return view
    
    
    }()
    
    
    
    
    func setupViews(){
        
        addSubview(containerView)
        addSubview(textLabel)
        addSubview(borderView)
        addSubview(buttonView)

    
        addConstraintsWithString("H:|[v0]|")
        
        addConstraintsWithString("V:|[v0]|")
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("V:|[v1]|")
        
        addConstraintsWithString("H:|[v2]|")
        addConstraintsWithString("V:|-30-[v2]-30-|")

        addConstraintsWithString("H:|-6-[v3]-6-|")
        addConstraintsWithString("V:|-6-[v3]-6-|")

    }
    
    
    
        func addConstraintsWithString(_ str:String){
            addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": containerView, "v1":buttonView, "v2":textLabel, "v3":borderView]))
        }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
