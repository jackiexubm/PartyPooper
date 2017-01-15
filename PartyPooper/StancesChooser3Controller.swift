//
//  StancesFormViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit
class StancesChooser3Controller: UIViewController {
    
    override func viewDidLoad() {
        view = StancesChooserView3()
        
    }
    
    func moveToFinish(){
        print("something")
        navigationController?.pushViewController(FormCompletedViewController(), animated: true)
    }
    
    
}

