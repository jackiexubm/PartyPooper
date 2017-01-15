//
//  MatchModel.swift
//  PartyPooper
//
//  Created by David Kang on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

struct MatchModel {
    
    
    let profileView: UIImage
    let nameView: String
    let partyName: String
    let percentage:String
    
    
    static func newModel() -> [MatchModel] {
        var ret: [MatchModel] = []
        let model1: MatchModel = MatchModel(profileView: #imageLiteral(resourceName: "article_0_photo") , nameView: "Bernie Sanders", partyName: "Independent", percentage:"74%")
        
        
        let model2: MatchModel = MatchModel(profileView: #imageLiteral(resourceName: "jillstein"), nameView: "Jill Stein", partyName:"Green Party", percentage: "55%")
        
        //        let model3: CandidateModel = CandidateModel(profileView: UIImage, nameView: String, partyName: String)
        
        ret.append(model1)
        ret.append(model2)
        
        return ret
    }
    
}
