//
//  IssuesCell.swift
//  PartyPooper
//
//  Created by David Kang on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class IssuesCell: UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        layer.borderWidth = 5
        layer.borderColor = UIColor.white.cgColor
        setupViews()
    }
    
    //    let IssueContainer: UICollectionView = {
    //        let view: UICollectionView = UICollectionView()
    //        view.backgroundColor = UIColor.blue
    //        view.translatesAutoresizingMaskIntoConstraints = false
    //        return view
    //    }()
    
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.green
        return view
        
    }()
    
    
    func setupViews(){
        
        addSubview(containerView)
        addConstraintsWithString("H:|[v0]|")
        addConstraintsWithString("V:|[v0]|")
        
        //        addSubview(IssueContainer)
        //        addConstraintsWithString("H:|[v0]|")
        //        addConstraintsWithString("V:|[v0(20)]|")
        //   addSubview(AboutPageIssueViewController)
        
    }
    
    
    
        func addConstraintsWithString(_ str:String){
            addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": containerView]))
        }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
