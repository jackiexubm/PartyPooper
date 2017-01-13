//
//  EventCell.swift
//  PartyPooper
//
//  Created by David Kang on 1/13/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class EventCell: UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.green
        setupViews()
    }
    
    
    func setupViews(){
    
    
    
    
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
//import UIKit
//
//class EventsView: UIView {
//
//    override init(frame: CGRect){
//        super.init(frame: frame)
//        backgroundColor = UIColor.white
//        setupViews()
//    }
//
//    let eventTitleLabel: UILabel = {
//        let title = UILabel()
//        title.backgroundColor = UIColor.red
//        title.translatesAutoresizingMaskIntoConstraints = false
//        return title
//    }()
//
//
//    func setupViews(){
//    addSubview(eventTitleLabel)
//
//
//
//    }
//
//
//
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
