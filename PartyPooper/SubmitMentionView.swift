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
        view.text = "URL:"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    let inputField: UITextField = {
        let view = UITextField()
        view.text = ""
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 3
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let submitButton: UIButton = {
        let view = UIButton()
        view.setTitle("Submit", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.gray.cgColor
        view.layer.cornerRadius = 3
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(SubmitMentionViewController.submitURL), for: .touchUpInside)
        return view
    }()
    
    
    func setupViews(){
        addSubview(inputLabel)
        addSubview(inputField)
        addSubview(submitButton)
        
        addConstraintWithString("V:|-200-[v0(40)]")
        addConstraintWithString("H:|-15-[v0(45)]-10-[v1]-15-|")
        addConstraintWithString("V:|-200-[v1(40)]-20-[v2(40)]")
        addConstraintWithString("H:|-70-[v2]-70-|")

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addConstraintWithString(_ str: String){
        let views: [String:UIView] = [
            "v0":inputLabel,
            "v1":inputField,
            "v2":submitButton
        ]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: views))
    }

    
}
