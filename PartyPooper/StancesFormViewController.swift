//
//  StancesFormViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit
class StancesFormViewController: UIViewController {

    override func viewDidLoad() {
        view = IssuesChooserView()
    }
    
    func continuePressed(){
        let nextPageVC = UINavigationController(rootViewController: StancesChooserViewController())
        self.present(nextPageVC, animated: true, completion: {
            //completion code here
            
        })
        
    }
    
}

