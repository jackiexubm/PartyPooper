//
//
//  PartyPooper
//
//  Created by Jackie Xu on 1/15/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class FormCompletedViewController: UIPageViewController{
    
    override func viewDidLoad() {
        view = FormCompletedView()
    }
    
    func matchButtonPressed() {
        print("print")
        let homeVC = HomeViewController()
        homeVC.didFillOutStances = true
        
        let navVC = UINavigationController(rootViewController: homeVC)
        present(navVC, animated: true) {
            //
            
        }
    }
}
