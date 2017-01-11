//
//  MentionCell.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class MentionCell: UICollectionViewCell{
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        setupViews()
        backgroundColor = UIColor.white
    }
    
    let topCellSeperator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(white: 227/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bottomCellSeperator: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor(white: 227/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let openMentionButton: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(MentionsViewController.openMention(sender:) ), for: .touchUpInside)
        return view
    }()
    
    let mentionPicture: UIImageView = {
        let view: UIImageView = UIImageView()
        view.backgroundColor = UIColor.green
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = #imageLiteral(resourceName: "article_2_photo")
        view.contentMode = .scaleAspectFill
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let authorAndNewsOutletLabel: UILabel = {
        let view: UILabel = UILabel()
        view.text = "By RALPH NADER • THE WASHINGTON POST"
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = NSTextAlignment.right
        view.textColor = UIColor.gray
        view.font = UIFont(name: "HelveticaNeue-Medium", size: 9)
        return view
    }()
    
    let mentionTitleLabel: UILabel = {
        let view: UILabel = UILabel()
        view.numberOfLines = 0
        view.text = "Ralph Nader: Why Bernie Sanders was right to run as a Democrat"
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = NSTextAlignment.left
        view.textColor = UIColor.black
        view.font = UIFont(name: "Georgia-Bold", size: 20)
        return view
    }()
    
    let mentionPreviewLabel: UILabel = {
        let view: UILabel = UILabel()
        view.numberOfLines = 0
        view.text = "The two-party system suffocates independent challengers. I would know. During a recent town hall in Columbus, Ohio, Sen. Bernie Sanders said the unthinkable. At least, you would have thought he did, judging by the response of several Democratic operatives. Sanders was deemed “extremely disgraceful” by Donna Brazile, vice chair of the Democratic National Committee, and “a political calculating fraud” by Brad Woodhouse, a former DNC communications director."
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = NSTextAlignment.left
        view.textColor = UIColor.gray
        view.font = UIFont(name: "Georgia", size: 12)
        return view
    }()

    let timeStampLabel: UILabel = {
        let view: UILabel = UILabel()
        view.numberOfLines = 1
        view.text = "March 25, 2016"
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = NSTextAlignment.left
        view.textColor = UIColor.red
        view.font = UIFont(name: "HelveticaNeue", size: 9)
        return view
    }()

    
    func setupViews(){
        let pictureHeight = 9 / 16 * UIScreen.main.bounds.width
        
        addSubview(topCellSeperator)
        addSubview(bottomCellSeperator)
        addSubview(openMentionButton)
        addSubview(mentionPicture)
        addSubview(authorAndNewsOutletLabel)
        addSubview(mentionTitleLabel)
        addSubview(mentionPreviewLabel)
        addSubview(timeStampLabel)
        
        addConstraintWithString("H:|[v0]|")
      //  addConstraintWithString("V:|[v0(1)]")
        addConstraintWithString("H:|[v1]|")
        addConstraintWithString("V:[v1(1)]|")
        addConstraintWithString("H:|[v2]|")
        addConstraintWithString("V:|[v2]-1-|")
        addConstraintWithString("H:|[v3]|")
        addConstraintWithString("V:|[v0(1)][v3(\(pictureHeight))]-7-[v4(10)]-5-[v5]-2-[v6]-50-|")
        addConstraintWithString("H:|[v4]-7-|")
        addConstraintWithString("H:|-15-[v5]-15-|")
        addConstraintWithString("H:|-15-[v6]-15-|")
        addConstraintWithString("H:|-17-[v7]")
        addConstraintWithString("V:[v3]-7-[v7]")
        


        
        
    }
    
    func addConstraintWithString(_ str: String){
        let views: [String:UIView] = [
            "v0":topCellSeperator,
            "v1":bottomCellSeperator,
            "v2":openMentionButton,
            "v3":mentionPicture,
            "v4":authorAndNewsOutletLabel,
            "v5":mentionTitleLabel,
            "v6":mentionPreviewLabel,
            "v7":timeStampLabel
        ]
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views: views))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
