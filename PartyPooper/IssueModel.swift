//
//  IssuesModel.swift
//  PartyPooper
//
//  Created by David Kang on 1/12/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

struct IssueModel {
    let image: UIImage?
    let issueName: String
    let issueContent: String
    
    static func sampleModel() -> [IssueModel] {
        var ret: [IssueModel] = []
        let model1: IssueModel = IssueModel(image: nil, issueName: "Hello", issueContent: "A")
        let model2: IssueModel = IssueModel(image: nil, issueName: "World", issueContent: "B")
        ret.append(model1)
        ret.append(model2)
        
        return ret 
    }

}

//let firstCell = CellModel()


