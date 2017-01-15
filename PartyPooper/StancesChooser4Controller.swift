//
//  StancesFormViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit
class StancesChooser4Controller: UIViewController {
    
    override func viewDidLoad() {
        view = StancesChooserView4()
    }
    
    func moveToThree(){
        navigationController?.pushViewController(StancesChooser3Controller(), animated: true)
    }
    
}

