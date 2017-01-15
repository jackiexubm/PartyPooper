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
        
        
        let model2: CandidateModel = CandidateModel(profileView: #imageLiteral(resourceName: "jillstein"), nameView: "Jill Stein", partyName:"Green Party")
        
//        let model3: CandidateModel = CandidateModel(profileView: <#T##UIImage#>, nameView: <#T##String#>, partyName: <#T##String#>)
        
        ret.append(model1)
        ret.append(model2)
        
        return ret
}

}
