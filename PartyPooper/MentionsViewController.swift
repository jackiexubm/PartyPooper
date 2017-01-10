//
//  MentionsViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/10/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit
import BTNavigationDropdownMenu


class MentionsViewController: UIViewController{
    
    override func viewDidLoad() {
        view = MentionsView()
        setupNavigationDropdownMenu()
    }
    
    func setupNavigationDropdownMenu(){
        let items = ["Top", "Latest", "Trending"]
        let dropdownNav = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Top Mentions", items: items as [AnyObject])
        
        dropdownNav.cellTextLabelFont = UIFont(name: "HelveticaNeue-Light", size: 18)
        dropdownNav.navigationBarTitleFont = UIFont(name: "HelveticaNeue-Light", size: 20)
        dropdownNav.cellTextLabelAlignment = NSTextAlignment.center
        dropdownNav.cellSeparatorColor = UIColor.lightGray
        dropdownNav.arrowTintColor = UIColor.black
        dropdownNav.shouldChangeTitleText = true
        dropdownNav.arrowPadding = 13
        dropdownNav.shouldKeepSelectedCellColor = true
        dropdownNav.selectedCellTextLabelColor = UIColor.white
        
        navigationItem.titleView = dropdownNav
    }
    
}

