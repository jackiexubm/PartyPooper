//
//  SubmitMentionView.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/12/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class SubmitMentionView: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let inputLabel: UILabel = {
        let view = UILabel()
        view.text = "URL: "
        view.backgroundColor = UIColor.yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    
    func setupViews(){
        addSubview(inputLabel)
        
        addConstraintWithString("H:|-15-[v0]")
        addConstraintWithString("V:|-200-[v0(20)]")
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstraintWithString(_ str: String){
        let views: [String:UIView] = [
            "v0":inputLabel
        ]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: views))
    }

    
}
