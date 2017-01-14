//
//  EventCell.swift
//  PartyPooper
//
//  Created by David Kang on 1/13/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit


class EventCell: UICollectionViewCell  {
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    
    
    let topSeperator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    
    }()
    
    let bottomSeperator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let dateOfEventLabel: UILabel = {
        let label = UILabel()
//        label.backgroundColor = UIColor.red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timeOfEventLabel: UILabel = {
        let label = UILabel()
//        label.backgroundColor = UIColor.brown
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let eventNameLabel: UILabel = {
        let label = UILabel()
//        label.backgroundColor = UIColor.blue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    let eventTypeLabel: UILabel = {
        let label = UILabel()
//        label.backgroundColor = UIColor.green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let eventDescription: UILabel = {
        let text = UILabel()
//        text.backgroundColor = UIColor.blue
        text.translatesAutoresizingMaskIntoConstraints = false
        text.lineBreakMode = NSLineBreakMode.byWordWrapping
        text.numberOfLines = 0
        return text
    }()
    
    
    
    
    
    func setupViews(){
        addSubview(topSeperator)
        addSubview(bottomSeperator)
        addSubview(dateOfEventLabel)
        addSubview(timeOfEventLabel)
        addSubview(eventNameLabel)
        addSubview(eventTypeLabel)
        addSubview(eventDescription)
        
        
        
        addConstraintWithString("H:|[v0]|")
        addConstraintWithString("V:|[v0(1)]")

        addConstraintWithString("H:|[v1]|")
        addConstraintWithString("V:[v1(1)]|")
        
        
        addConstraintWithString("H:|-15-[v2(100)]-[v3(100)]")
        addConstraintWithString("V:|-10-[v2(20)]-[v4(50)]-[v5(20)]-[v6]-|")
        
        addConstraintWithString("V:|-10-[v3(20)]")
        
        addConstraintWithString("H:|-15-[v4]-|")
        addConstraintWithString("H:|-15-[v5(200)]")
        
        addConstraintWithString("H:|-15-[v6]-10-|")
        

    }
    
    func addConstraintWithString(_ str: String){
        let views: [String:UIView] = [
            "v0":topSeperator,
            "v1":bottomSeperator,
            "v2":dateOfEventLabel,
            "v3":timeOfEventLabel,
            "v4":eventNameLabel,
            "v5":eventTypeLabel,
            "v6":eventDescription,
        ]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: views))
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
