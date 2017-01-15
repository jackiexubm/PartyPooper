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
    
    let donateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.init(white: 220/255, alpha: 1)
        label.text = "Help Out the Campaign!"
        label.textAlignment = NSTextAlignment.center
        return label
    }()
    
    
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = #imageLiteral(resourceName: "donateimage")
        view.contentMode = .scaleAspectFill
        view.layer.masksToBounds = true
        return view
    }()
    
    
    
    func setupViews() {
        addSubview(imageView)
        imageView.addSubview(donateLabel)
        
        
        addConstraintsWithString("H:|-50-[v0]-50-|")
        addConstraintsWithString("V:|-500-[v0(50)]")
        
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("V:|-[v1]-|")
        
        
        
    }
    
    
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views:
            ["v0":donateLabel,
             "v1":imageView,
             
             ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
