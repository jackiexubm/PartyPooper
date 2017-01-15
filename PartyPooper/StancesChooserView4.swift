//
//  StancesChooserView.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/15/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit
import M13Checkbox

class StancesChooserView4: UIView {
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let questionContainerView: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()
    
    let questionTopicLabel: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = NSTextAlignment.center
        view.font = UIFont(name: "ArialMT", size: 23)
        view.text = "CLIMATE CHANGE"
        return view
    }()
    
    let questionSeparator: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.lightGray
        return view
    }()
    
    let questionLabel: UILabel = {
        let view: UILabel = UILabel()
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Do you believe the nation should reduce its reliance on coal and other fossil fuels to combat global climate change?"
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 17)
        view.textAlignment = NSTextAlignment.center
        return view
    }()
    
    let answersContainerView: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let button0: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch0), for: .touchUpInside)
        return view
    }()
    
    let label0: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Climage change"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 17)
        return view
    }()
    
    let checkbox0: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.animationDuration = 0.2
        view.isUserInteractionEnabled = false
        return view
    }()
    
    let button1: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch1), for: .touchUpInside)
        return view
    }()
    
    let label1: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Climage change"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 17)
        return view
    }()
    
    let checkbox1: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.animationDuration = 0.2
        view.isUserInteractionEnabled = false
        return view
    }()
    
    let button2: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch2), for: .touchUpInside)
        return view
    }()
    
    let label2: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Climage change"
        view.textAlignment = NSTextAlignment.center
        return view
    }()
    
    let checkbox2: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.animationDuration = 0.2
        view.isUserInteractionEnabled = false
        return view
    }()
    
    let button3: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch3), for: .touchUpInside)
        return view
    }()
    
    let label3: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Climate change"
        view.textAlignment = NSTextAlignment.center
        return view
    }()
    
    let checkbox3: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.animationDuration = 0.2
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch0(){
        if button0.backgroundColor == UIColor.white{
            button0.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox0.setCheckState(M13Checkbox.CheckState.checked, animated: true)
            button1.backgroundColor = UIColor.white
            checkbox1.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            button2.backgroundColor = UIColor.white
            checkbox2.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            button3.backgroundColor = UIColor.white
            checkbox3.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
        }
    }
    
    func switch1(){
        if button1.backgroundColor == UIColor.white{
            button1.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox1.setCheckState(M13Checkbox.CheckState.checked, animated: true)
            button0.backgroundColor = UIColor.white
            checkbox0.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            button2.backgroundColor = UIColor.white
            checkbox2.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            button3.backgroundColor = UIColor.white
            checkbox3.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
        }
    }
    
    func switch2(){
        if button2.backgroundColor == UIColor.white{
            button2.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox2.setCheckState(M13Checkbox.CheckState.checked, animated: true)
            button0.backgroundColor = UIColor.white
            checkbox0.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            button1.backgroundColor = UIColor.white
            checkbox1.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            button3.backgroundColor = UIColor.white
            checkbox3.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
        }
    }
    
    func switch3(){
        if button3.backgroundColor == UIColor.white{
            button3.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox3.setCheckState(M13Checkbox.CheckState.checked, animated: true)
            button0.backgroundColor = UIColor.white
            checkbox0.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            button1.backgroundColor = UIColor.white
            checkbox1.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            button2.backgroundColor = UIColor.white
            checkbox2.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
        }
    }
    
    func setupViews(){
        addSubview(questionContainerView)
        questionContainerView.addSubview(questionTopicLabel)
        questionContainerView.addSubview(questionSeparator)
        questionContainerView.addSubview(questionLabel)
        addSubview(answersContainerView)
        answersContainerView.addSubview(button0)
        answersContainerView.addSubview(button1)
        answersContainerView.addSubview(button2)
        answersContainerView.addSubview(button3)
        button0.addSubview(label0)
        button1.addSubview(label1)
        button2.addSubview(label2)
        button3.addSubview(label3)
        button0.addSubview(checkbox0)
        button1.addSubview(checkbox1)
        button2.addSubview(checkbox2)
        button3.addSubview(checkbox3)
        
        
        addConstraintsWithString("H:|-5-[v0]-5-|")
        addConstraintsWithString("H:|[v4]|")
        addConstraintsWithString("V:|-69-[v0(200)][v4]|")
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("H:|[v2]|")
        addConstraintsWithString("H:|-20-[v3]-20-|")
        addConstraintsWithString("V:|[v1(50)][v2(1)][v3]|")
        addConstraintsWithString("H:|-5-[b0]-5-|")
        addConstraintsWithString("H:|-5-[b1]-5-|")
        addConstraintsWithString("H:|-5-[b2]-5-|")
        addConstraintsWithString("H:|-5-[b3]-5-|")
        addConstraintsWithString("H:|-15-[c0(40)]")
        addConstraintsWithString("H:|-15-[c1(40)]")
        addConstraintsWithString("H:|-15-[c2(40)]")
        addConstraintsWithString("H:|-15-[c3(40)]")
        addConstraintsWithString("H:|[l0]|")
        addConstraintsWithString("H:|[l1]|")
        addConstraintsWithString("H:|[l2]|")
        addConstraintsWithString("H:|[l3]|")
        addConstraintsWithString("V:|-5-[b0]-5-[b1]-5-[b2]-5-[b3]-5-|")
        addConstraintsWithString("V:[b0(==b1)]")
        addConstraintsWithString("V:[b0(==b2)]")
        addConstraintsWithString("V:[b0(==b3)]")
        addConstraintsWithString("V:[c0(40)]")
        addConstraintsWithString("V:[c1(40)]")
        addConstraintsWithString("V:[c2(40)]")
        addConstraintsWithString("V:[c3(40)]")
        addConstraint(NSLayoutConstraint(item: checkbox0, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: button0, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0 ))
        addConstraint(NSLayoutConstraint(item: checkbox1, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: button1, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0 ))
        addConstraint(NSLayoutConstraint(item: checkbox2, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: button2, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0 ))
        addConstraint(NSLayoutConstraint(item: checkbox3, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: button3, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0 ))
        addConstraintsWithString("V:|[l0]|")
        addConstraintsWithString("V:|[l1]|")
        addConstraintsWithString("V:|[l2]|")
        addConstraintsWithString("V:|[l3]|")
        
        
        
        
        
        
    }
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views:[
            "v0":questionContainerView,
            "v1":questionTopicLabel,
            "v2":questionSeparator,
            "v3":questionLabel,
            "v4":answersContainerView,
            "b0":button0,
            "b1":button1,
            "b2":button2,
            "b3":button3,
            "l0":label0,
            "l1":label1,
            "l2":label2,
            "l3":label3,
            "c0":checkbox0,
            "c1":checkbox1,
            "c2":checkbox2,
            "c3":checkbox3
            ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
