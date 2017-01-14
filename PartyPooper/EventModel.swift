//
//  EventModel.swift
//  PartyPooper
//
//  Created by David Kang on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit

struct EventModel {
   
    
    let dateOfEvent: String
    let timeOfEvent: String
    let eventName: String
    let eventType: String
    let eventDescription: String
    
    
    static func samplModel() -> [EventModel] {
        var ret: [EventModel] = []
        let model1: EventModel = EventModel(dateOfEvent: "Jan 15 (Sun)", timeOfEvent: "11:30am", eventName: "'Health Care for People, Not Profits' March and Rally", eventType: "Volunteer activity", eventDescription: "Join supporters of 'Medicare for All' to call out the health care profiteers and call for a single-payer national health insurance program in the U.S.")
//        let model2: IssueModel = IssueModel(image: nil, issueName: "World", issueContent: "B")
//        let model3: IssueModel = IssueModel(image: nil, issueName: "World", issueContent: "B")

        ret.append(model1)
//        ret.append(model2)
//        ret.append(model3)
        
        return ret
}

}
