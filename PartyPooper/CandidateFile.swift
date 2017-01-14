//
//  CandidateFile.swift
//  PartyPooper
//
//  Created by David Kang on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

struct CandidateModel {
    
    
    let profileView: UIImage
    let nameView: String
    let partyName: String
    
    
    
    static func newModel() -> [CandidateModel] {
        var ret: [CandidateModel] = []
        let model1: CandidateModel = CandidateModel(profileView: #imageLiteral(resourceName: "article_0_photo") , nameView: "Bernie Sanders", partyName: "Independent")
        
        
        
        
        //        let model2: IssueModel = IssueModel(image: nil, issueName: "World", issueContent: "B")
        //        let model3: IssueModel = IssueModel(image: nil, issueName: "World", issueContent: "B")
        
        ret.append(model1)

        //        ret.append(model3)
        
        return ret
}

}
