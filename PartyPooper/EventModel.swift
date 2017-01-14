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
    let eventLocation: String
    
    
    static func newModel() -> [EventModel] {
        var ret: [EventModel] = []
        let model1: EventModel = EventModel(dateOfEvent: "Jan 15 (Sun)", timeOfEvent: "11:30am", eventName: "'Health Care for People, Not Profits' March and Rally", eventType: "Volunteer activity", eventLocation: "District Council 37 AFSCME 125 Barclay Street New York NY 10007")
        
        let model2: EventModel = EventModel(dateOfEvent: "Jan 15 (Sun)", timeOfEvent: "12:30am", eventName: "Our First Stand: Save Health Care Town Hall with John Wisniewski", eventType: "Volunteer activity", eventLocation: "Hudson Co. Community College, Journal Square Campus 161 Newkirk Street Jersey City NJ 07306")
        
        
        
//        let model2: IssueModel = IssueModel(image: nil, issueName: "World", issueContent: "B")
//        let model3: IssueModel = IssueModel(image: nil, issueName: "World", issueContent: "B")

        ret.append(model1)
        ret.append(model2)
//        ret.append(model3)
        
        return ret
}

}
