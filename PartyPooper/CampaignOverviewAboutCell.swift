//
//  CampaignOverviewAboutCell.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/13/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class CampaignOverviewAboutCell: UICollectionViewCell{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        //backgroundColor = UIColor.lightGray
        setupViews()
    }
    
    let button: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let categoryLabel: UILabel = {
        let view: UILabel = UILabel()
        view.text = "About"
        view.textColor = UIColor.gray
        view.font = UIFont(name: "STHeitiTC-Light", size: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.sizeToFit()
        view.textAlignment = NSTextAlignment.center
        return view
    }()
    
    let arrowIcon: UIImageView = {
        let view: UIImageView = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = UIColor.gray
        view.image = #imageLiteral(resourceName: "right_arrow")
        return view
    }()
    
    let cellSeperator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor.lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let contentLabel: UITextView = {
        let view: UITextView = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "sdadas asjd jkad kaj dajd lajd aklsjdlajd a jsdadas asjd jkad kaj dajd lajd aklsjdlajd a sdadas asjd jkad kaj dajd lajd aklsjdlajd a sdadas asjd jkad kaj dajd lajd aklsjdlajd a sdadas asjd jkad kaj dajd lajd aklsjdlajd a sdadas asjd jkad kaj dajd lajd aklsjdlajd a sdadas asjd jkad kaj dajd lajd aklsjdlajd a sdadas asjd jkad kaj dajd lajd aklsjdlajd a sdadas asjd jkad kaj dajd lajd aklsjdlajd a "
        view.font = UIFont(name: "HelveticaNeue", size: 18)
        view.isUserInteractionEnabled = false
        view.isScrollEnabled = false
        return view
    }()
    
    
    func setupViews(){
        addSubview(button)
        addSubview(categoryLabel)
        addSubview(arrowIcon)
        addSubview(cellSeperator)
        addSubview(contentLabel)
        
        addConstraintsWithString("H:|[v0]|")
        addConstraintsWithString("V:|[v0]|")
        addConstraintsWithString("H:|-10-[v1(50)]")
        addConstraintsWithString("V:|-10-[v1(15)][v4]-5-|")
        addConstraintsWithString("V:[v2(20)]")
        addConstraint(NSLayoutConstraint(item: arrowIcon, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0))
        addConstraintsWithString("H:|-15-[v3]-15-|")
        addConstraintsWithString("V:[v3(1)]|")
        addConstraintsWithString("H:|-22-[v4]-22-[v2(20)]-15-|")
        
    }
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views:
            ["v0":button,
             "v1":categoryLabel,
             "v2":arrowIcon,
             "v3":cellSeperator,
             "v4":contentLabel
            ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
