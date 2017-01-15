//
//  View.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class CampaignHeaderCell: UICollectionViewCell{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let bannerView: UIImageView = {
        let view: UIImageView = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = #imageLiteral(resourceName: "banner_photo")
        return view
    }()
    
    let profileView: UIImageView = {
        let view: UIImageView = UIImageView()
        view.image = #imageLiteral(resourceName: "bernie_profile")
        view.layer.borderWidth = 4
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 60
        view.layer.masksToBounds = true
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let candidateName: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Bernie Sanders"
        label.font = UIFont.init(name: "HelveticaNeue-Medium", size: 30)
        label.textAlignment = NSTextAlignment.center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let candidateDescription: UILabel = {
        let label: UILabel = UILabel()
        label.text = "U.S. Senator, VT"
        label.font = UIFont.init(name: "HelveticaNeue-Medium", size: 18)
        label.textAlignment = NSTextAlignment.center
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        
        
        return label
    }()
    
    let candidateQuote: UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "\"A political revolution is coming\""
        label.textColor = UIColor.gray
        label.font = UIFont(name: "Arial-ItalicMT", size: 15)
        label.textAlignment = NSTextAlignment.center
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 0
        
        return label
        
    }()
    
    
    
    func setupViews(){
        let heightOfBanner = 9 / 16 * UIScreen.main.bounds.width
        
        
        addSubview(bannerView)
        addSubview(profileView)
        addSubview(candidateName)
        addSubview(candidateDescription)
        addSubview(candidateQuote)
        
        addConstraintsWithString("H:|[v0]|")
        addConstraintsWithString("H:[v1(120)]")
        
        
        
        addConstraintsWithString("V:|[v0(\(heightOfBanner))]")
        addConstraintsWithString("V:|-\(heightOfBanner - 60)-[v1(120)]-[v2(30)]-[v3(15)]-[v4(40)]")
        addConstraint(NSLayoutConstraint(item: profileView, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0))
        addConstraintsWithString("H:|-20-[v2]-20-|")
        addConstraintsWithString("H:|-20-[v3]-20-|")
        
        addConstraintsWithString("H:|[v4]|")
    }
    
    
    
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":bannerView, "v1":profileView, "v2":candidateName, "v3": candidateDescription, "v4": candidateQuote
            
            
            
            
            ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
