//
//  DonateView.swift
//  PartyPooper
//
//  Created by David Kang on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit



class DonateView: UIView {
    
    
    override init(frame: CGRect){
    super.init(frame: frame)
    backgroundColor = UIColor.white
    setupViews()
    }
    
    let donateLabel: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.red
        return button
    }()
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = #imageLiteral(resourceName: "new_donate")
        view.contentMode = .scaleAspectFill
        view.layer.masksToBounds = true
        return view
    }()
    
    
    
    func setupViews() {
        addSubview(imageView)
        imageView.addSubview(donateLabel)
        
        
        addConstraintsWithString("H:|-100-[v0(20)]")
        addConstraintsWithString("V:|-300-[v0(20)]")
        
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("V:|-64-[v1]-|")

        
        
    }
    
    

    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views:
            ["v0":donateLabel,
             "v1":imageView
            ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
