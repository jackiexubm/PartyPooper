//
//  StancesFormViewController.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit
class StancesChooser2Controller: UIViewController {
    
    override func viewDidLoad() {
        view = StancesChooserView2()
    }
    
    func moveToFour(){
        navigationController?.pushViewController(StancesChooser4Controller(), animated: true)
    }
    
}

