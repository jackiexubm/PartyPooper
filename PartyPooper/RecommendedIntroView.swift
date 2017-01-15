//
//  RecommendedIntroView.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class RecommendedIntroView: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let textLabel: UITextView = {
        let view: UITextView = UITextView()
        view.isUserInteractionEnabled = false
        view.isScrollEnabled = false
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = NSTextAlignment.center
        view.text = "It looks like you haven't chosen issues you care about yet!"
        view.font = UIFont(name: "HelveticaNeue", size: 25)
        return view
    }()
    
    let fillStancesButton: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 3
        view.setTitle("Fill Out Form", for: .normal)
        view.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 30)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(HomeViewController.openSurvey), for: .touchUpInside)
        return view
    }()
    
    func setupViews(){
        let views: [String:UIView] = ["v0":textLabel, "v1":fillStancesButton]
        addSubview(textLabel)
        addSubview(fillStancesButton)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-30-[v0]-30-|", options: NSLayoutFormatOptions(), metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-140-[v0(110)]-20-[v1(60)]", options: NSLayoutFormatOptions(), metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v1(220)]", options: NSLayoutFormatOptions(), metrics: nil, views: views))
        addConstraint(NSLayoutConstraint(item: fillStancesButton, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0))

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
