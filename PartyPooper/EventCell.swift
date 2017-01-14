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
        label.backgroundColor = UIColor.red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let timeOfEventLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.brown
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let eventNameLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let eventTypeLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.green
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let eventImageLabel: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = UIColor.blue
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    
    
    
    func setupViews(){
        addSubview(topSeperator)
        addSubview(bottomSeperator)
        addSubview(dateOfEventLabel)
        addSubview(timeOfEventLabel)
        addSubview(eventNameLabel)
        addSubview(eventTypeLabel)
        addSubview(eventImageLabel)
        
        
        
        addConstraintWithString("H:|[v0]|")
        addConstraintWithString("V:|[v0(1)]")

        addConstraintWithString("H:|[v1]|")
        addConstraintWithString("V:[v1(1)]|")
        
        
        addConstraintWithString("H:|-15-[v2(50)]-[v3(50)]")
        addConstraintWithString("V:|-10-[v2(10)]-[v4(20)]-[v5(20)]-[v6]-|")
        
        addConstraintWithString("V:|-10-[v3(10)]")
        
        addConstraintWithString("H:|-15-[v4(300)]")
        addConstraintWithString("H:|-15-[v5(200)]")
        
        addConstraintWithString("H:|-10-[v6]-10-|")
        

    }
    
    func addConstraintWithString(_ str: String){
        let views: [String:UIView] = [
            "v0":topSeperator,
            "v1":bottomSeperator,
            "v2":dateOfEventLabel,
            "v3":timeOfEventLabel,
            "v4":eventNameLabel,
            "v5":eventTypeLabel,
            "v6":eventImageLabel,
        ]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: views))
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
