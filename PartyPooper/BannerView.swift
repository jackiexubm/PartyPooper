//
//  BannerView.swift
//  PartyPooper
//
//  Created by David Kang on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class BannerView: UIView{
    init () {

        let newframe = CGRect(x: 0, y: 0, width: 100, height: 100)
        let campaignBanner = UIView(frame: newframe)
        campaignBanner.backgroundColor = UIColor.red
        super.init(frame: newframe)

    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
