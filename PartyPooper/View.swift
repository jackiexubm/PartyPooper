//
//  View.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class View: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let bannerView: UIImageView = {
        let view: UIImageView = UIImageView()
        view.backgroundColor = UIColor.blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let profileView: UIImageView = {
        let view: UIImageView = UIImageView()
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 50
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setupViews(){
        addSubview(bannerView)
        addSubview(profileView)
    
        addConstraintsWithString("H:|[v0]|")
        addConstraintsWithString("H:|-150-[v1(100)]|")
        
        
        addConstraintsWithString("V:|-74-[v1(100)]")
        addConstraintsWithString("V:|-64-[v0(120)]")
    }
    

    
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":bannerView, "v1":profileView
            
            
            
            
            ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
