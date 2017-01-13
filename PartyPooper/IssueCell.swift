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
        view.backgroundColor = UIColor.green
        return view
        
    }()
    
    let buttonView: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(AboutViewController.openIssue(sender:)), for: .touchUpInside)
        return view
    
    }()
    
    let textLabel: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textAlignment = NSTextAlignment.center
        return text
    }()
    
    
    
    func setupViews(){
        
        addSubview(containerView)
        addSubview(textLabel)
        addSubview(buttonView)
    
        addConstraintsWithString("H:|[v0]|")
        addConstraintsWithString("V:|[v0]|")
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("V:|[v1]|")
        
        addConstraintsWithString("H:|[v2]|")
        addConstraintsWithString("V:|-30-[v2]-30-|")

    }
    
    
    
        func addConstraintsWithString(_ str:String){
            addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": containerView, "v1":buttonView, "v2":textLabel]))
        }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
