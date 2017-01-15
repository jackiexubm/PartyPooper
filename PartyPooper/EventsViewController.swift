//
//  EventsViewController.swift
//  PartyPooper
//
//  Created by David Kang on 1/13/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit


class EventsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let sampleIssueModels: [EventModel] = EventModel.newModel()

    override func viewDidLoad() {
        collectionView?.register(EventCell.self, forCellWithReuseIdentifier: "EventsCell")
        collectionView?.backgroundColor = UIColor(white: 237/255, alpha: 1)
        
    }



    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleIssueModels.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EventsCell", for: indexPath) as! EventCell
        cell.dateOfEventLabel.text = (sampleIssueModels[indexPath.row].dateOfEvent)
        cell.timeOfEventLabel.text = (sampleIssueModels[indexPath.row].timeOfEvent)
        cell.eventNameLabel.text = (sampleIssueModels[indexPath.row].eventName)
        cell.eventTypeLabel.text = (sampleIssueModels[indexPath.row].eventType)
        cell.eventDescription.text = (sampleIssueModels[indexPath.row].eventLocation)

        return cell
    }
    
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 200)
        
    }
    

    
    
    
}

