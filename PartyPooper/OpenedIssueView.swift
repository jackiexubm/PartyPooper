//
//  OpenedIssueView.swift
//  PartyPooper
//
//  Created by David Kang on 1/12/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit


class  OpenedIssueView: UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
        
    }
    
    
    let issueNameLabel: UILabel = {
        let topic = UILabel()
        topic.textAlignment = NSTextAlignment.center
        topic.font = UIFont(name: "HelveticaNeue-Light", size: 40)
        topic.backgroundColor = UIColor.white
        topic.translatesAutoresizingMaskIntoConstraints = false
        topic.numberOfLines = 0 
        return topic
    }()
    
    let labelSeparator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let contentLabel: UITextView = {
        let topic = UITextView()
        topic.backgroundColor = UIColor.white
        topic.font = UIFont(name: "HelveticaNeue", size: 20)
        topic.text = "daslkdasjdlk jdlkasjd lasjdlkajlkas jdlkasjdl aj"
        topic.translatesAutoresizingMaskIntoConstraints = false
        return topic
    }()
    
    
    
    func setupViews(){
        addSubview(issueNameLabel)
        addSubview(contentLabel)
        addSubview(labelSeparator)
        
        addConstraintsWithString("H:|[v0]|")
        addConstraintsWithString("V:|-64-[v0(100)]-5-[v2(1)]-10-[v1]|")
        addConstraintsWithString("H:|-15-[v1]-15-|")
        addConstraintsWithString("H:|-15-[v2]-15-|")
        
        
    }
    
    
    
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views:
            ["v0":issueNameLabel,
             "v1":contentLabel,
             "v2":labelSeparator
            ]))
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
