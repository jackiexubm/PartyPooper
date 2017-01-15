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
        let model1: IssueModel = IssueModel(image: nil, issueName: "The Economy", issueContent: "Americans remain uneasy about the economy, even if they have become more sanguine in recent years. In a recent Wall Street Journal poll, just 47 percent of Democrats — and only 4 percent of Republicans — reported being “cautiously optimistic” about the economy. That dissatisfaction is driven by a harsh reality: Six-plus years after the recession officially ended, there has been no meaningful recovery in household income.")
        let model2: IssueModel = IssueModel(image: nil, issueName: "Environment and Science", issueContent: "Climate change is one of the most partisan issues in the presidential race, and it’s one that will continue to make news in the coming election cycle. This year’s United Nations climate talks, which get underway in Paris at the end of this month, aim to produce a binding agreement that would get the world closer to preventing temperatures from rising more than 2 degrees Celsius (3.6 degrees Fahrenheit) above pre-industrial levels, beyond which global warming is likely to become catastrophic. The plan submitted to the U.N. by the Obama administration pledges to reduce U.S. emissions by 26 to 28 percent from 2005 levels, a target that would be achieved mostly through administrative actions. Those actions have received intense criticisms from Republicans and are the subject of lawsuits from industry groups and some states, particularly in coal country.")
        let model3: IssueModel = IssueModel(image: nil, issueName: "Criminal Justice", issueContent: "The two major parties have been having mostly separate conversations about criminal justice. But as mass shootings continue, as well as debates about incarceration, crime and violence committed by police officers, those conversations could converge.")
        
        let model4: IssueModel = IssueModel(image: nil, issueName: "Health Care", issueContent: "The soaring price of drugs — the legal kind — has moved into the headlines and the 2016 presidential race. Pharmaceutical companies are under fire for jacking up prices for new and generic drugs. Medicare spent $4.6 billion during the first half of 2015 on expensive drugs to treat hepatitis C, and new treatments for high cholesterol are so expensive that people are debating whether the value is worth the price. Poll after poll shows that high drug prices are the leading health care concern in the United States. Recent polls have found that the majority of people think pharmaceutical companies are to blame and that the government should negotiate prices for Medicare and force companies to release pricing information.")
        
        
        
        
        
        //apppend everything here
        
        
        ret.append(model1)
        ret.append(model2)
        ret.append(model3)
        ret.append(model4)
        return ret
    }
    
}

//let firstCell = CellModel()


