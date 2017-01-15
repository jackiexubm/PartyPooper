//
//  CampaignsListView.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class HomeView: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
        backgroundColor = UIColor.white
    }
    
    let containerView: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    func setupViews(){
        addSubview(containerView)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":containerView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-64-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":containerView]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
