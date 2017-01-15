//
//  SubmitMentionView.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/12/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

class SubmitMentionViewController: UIViewController{

    override func viewDidLoad() {
        view = SubmitMentionView()
        super.viewDidLoad()
       navigationItem.title = "Submit"
    }
    
    func submitURL(){
        if let input = (view as! SubmitMentionView).inputField.text {
            print(input)
        }
        navigationController?.popViewController(animated: true)
    }
    
}
