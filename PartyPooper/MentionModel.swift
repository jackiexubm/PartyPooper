//
//  MentionModel.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/11/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//
import UIKit

struct MentionModel {
    
    let URL: String
    let title: String
    let contentPreview: String
    let author: String
    let newsOutletName: String
    let publishDate: String
    let image: UIImage
    let fairnessScore: Int
    let accuracyScore: Int
    let relevancyScore: Int
    
    static func fillModel() -> [MentionModel]{
        var array: [MentionModel] = []
        let model0: MentionModel = MentionModel(
            URL: "https://www.washingtonpost.com/posteverything/wp/2016/03/25/ralph-nader-why-bernie-sanders-was-right-to-run-as-a-democrat/?utm_term=.52659302b6a3",
            title: "Ralph Nader: Why Bernie Sanders was right to run as a Democrat",
            contentPreview: "The two-party system suffocates independent challengers. I would know. During a recent town hall in Columbus, Ohio, Sen. Bernie Sanders said the unthinkable. At least, you would have thought he did, judging by the response of several Democratic operatives. Sanders was deemed “extremely disgraceful” by Donna Brazile, vice chair of the Democratic National Committee, and “a political calculating fraud” by Brad Woodhouse, a former DNC communications director.",
            author: "Ralph Nader",
            newsOutletName: "The Washington Post",
            publishDate: "March 25, 2016",
            image: #imageLiteral(resourceName: "article_0_photo"),
            fairnessScore: 80,
            accuracyScore: 97,
            relevancyScore: 99)
        
        let model1: MentionModel = MentionModel(
            URL: "http://www.politico.com/story/2016/11/independent-bernie-sanders-democratic-leadership-231486",
            title: "Sanders joins Democratic leadership, isn't officially a Democrat",
            contentPreview: "He says he'll continue to identify as an independent, despite running for president as a Democrat. Bernie Sanders was just appointed to the Senate Democratic leadership team. But the Vermont senator still isn't becoming an official member of the party. After new Senate Democratic leader Chuck Schumer on Wednesday added the 2016 presidential candidate to his leadership slate as outreach director, Sanders waved off a question from POLITICO about whether he is now a full-fledged Democrat. An aide later confirmed that the Vermont senator would remain an independent who caucuses with Democrats.",
            author: "Elena Schor",
            newsOutletName: "Politico",
            publishDate: "November 16, 2016",
            image: #imageLiteral(resourceName: "article_1_photo"),
            fairnessScore: 92,
            accuracyScore: 91,
            relevancyScore: 93)
        
        array.append(model0)
        array.append(model1)
        return array
    }
    
    
}
