//
//  CampaignsListViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var didFillOutStances: Bool = false
    
    let segmentedControl: UISegmentedControl = {
        let view: UISegmentedControl = UISegmentedControl(items: ["All","Recommended"])
        view.layer.borderWidth = 1
        //view.layer.borderColor = UIColor.gray.cgColor
        view.layer.cornerRadius = 3
        return view
    }()
    
    override func viewDidLoad() {
        navigationItem.titleView = segmentedControl
        view = HomeView()
        navigationItem.titleView = segmentedControl
        
        let recIntroVC = RecommendedIntroViewController()
        addChildViewController(recIntroVC)
        recIntroVC.didMove(toParentViewController: self)
        recIntroVC.view.translatesAutoresizingMaskIntoConstraints = false
        (view as! HomeView).containerView.addSubview(recIntroVC.view)
        (view as! HomeView).containerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recIntroVC.view]))
        (view as! HomeView).containerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":recIntroVC.view]))
        
        let allViewCV = AllViewController()
        addChildViewController(allViewCV)
        allViewCV.didMove(toParentViewController: self)
        allViewCV.view.translatesAutoresizingMaskIntoConstraints = false
        (view as! HomeView).containerView.addSubview(allViewCV.view)
        (view as! HomeView).containerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":allViewCV.view]))
        (view as! HomeView).containerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":allViewCV.view]))
        
        
        
        super.viewDidLoad()
    }
    
    
    
    
    //    override func viewWillAppear(_ animated: Bool) {
    //        navigationController?.setNavigationBarHidden(true, animated: true)
    //    }
    //
    //    override func viewWillDisappear(_ animated: Bool) {
    //        navigationController?.setNavigationBarHidden(false, animated: true)
    //    }
}
