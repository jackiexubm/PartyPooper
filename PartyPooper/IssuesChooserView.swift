//
//  IssuesChooserView.swift
//  PartyPooper
//
//  Created by Jackie Xu on 1/14/17.
//  Copyright © 2017 Debug Politics Team. All rights reserved.
//

import UIKit
import M13Checkbox

class IssuesChooserView: UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = UIColor.white
        setupViews()
    }
    
    let promptLabel: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.textAlignment = NSTextAlignment.center
        view.text = "Choose the issues that matter most to you:"
        view.textColor = UIColor.gray
        view.font = UIFont(name: "HelveticaNeue", size: 16)
        return view
    }()
    
    let optionsContainerView: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let doneButton: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 25
        view.layer.borderColor = UIColor.black.cgColor
        view.setTitle("Continue", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 22)
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
    
    let button4: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch4), for: .touchUpInside)
        return view
    }()
    
    let button5: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch5), for: .touchUpInside)
        return view
    }()
    
    let button6: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch6), for: .touchUpInside)
        return view
    }()
    
    let button7: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch7), for: .touchUpInside)
        return view
    }()
    
    let button8: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch8), for: .touchUpInside)
        return view
    }()
    
    let button9: UIButton = {
        let view: UIButton = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 3
        view.layer.borderColor = UIColor(white: 220/255, alpha: 1).cgColor
        view.backgroundColor = UIColor.white
        view.addTarget(self, action: #selector(switch9), for: .touchUpInside)
        return view
    }()
    
    let label0: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox0: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch0(){
        if button0.backgroundColor == UIColor.white{
            button0.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox0.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button0.backgroundColor = UIColor.white
            checkbox0.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)

        }
    }

    let label1: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox1: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch1(){
        if button1.backgroundColor == UIColor.white{
            button1.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox1.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button1.backgroundColor = UIColor.white
            checkbox1.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            
        }
    }
    
    let label2: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox2: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch2(){
        if button2.backgroundColor == UIColor.white{
            button2.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox2.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button2.backgroundColor = UIColor.white
            checkbox2.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            
        }
    }
    
    let label3: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox3: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch3(){
        if button3.backgroundColor == UIColor.white{
            button3.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox3.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button3.backgroundColor = UIColor.white
            checkbox3.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            
        }
    }
    
    let label4: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox4: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch4(){
        if button4.backgroundColor == UIColor.white{
            button4.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox4.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button4.backgroundColor = UIColor.white
            checkbox4.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            
        }
    }
    
    let label5: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox5: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch5(){
        if button5.backgroundColor == UIColor.white{
            button5.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox5.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button5.backgroundColor = UIColor.white
            checkbox5.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            
        }
    }
    
    let label6: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox6: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch6(){
        if button6.backgroundColor == UIColor.white{
            button6.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox6.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button6.backgroundColor = UIColor.white
            checkbox6.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            
        }
    }
    
    let label7: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox7: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch7(){
        if button7.backgroundColor == UIColor.white{
            button7.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox7.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button7.backgroundColor = UIColor.white
            checkbox7.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            
        }
    }
    
    let label8: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox8: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch8(){
        if button8.backgroundColor == UIColor.white{
            button8.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox8.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button8.backgroundColor = UIColor.white
            checkbox8.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            
        }
    }
    
    let label9: UILabel = {
        let view: UILabel = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Some issue"
        view.textAlignment = NSTextAlignment.center
        view.textColor = UIColor.black
        view.font = UIFont(name: "Arial-BoldMT", size: 19)
        return view
    }()
    
    let checkbox9: M13Checkbox = {
        let view: M13Checkbox = M13Checkbox()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.stateChangeAnimation = M13Checkbox.Animation.bounce(M13Checkbox.AnimationStyle.fill)
        view.isUserInteractionEnabled = false
        return view
    }()
    
    func switch9(){
        if button9.backgroundColor == UIColor.white{
            button9.backgroundColor = UIColor(white: 220/255, alpha: 1)
            checkbox9.setCheckState(M13Checkbox.CheckState.checked, animated: true)
        }else{
            button9.backgroundColor = UIColor.white
            checkbox9.setCheckState(M13Checkbox.CheckState.unchecked, animated: true)
            
        }
    }
    
    

    
    

    func setupViews(){
        addSubview(promptLabel)
        addSubview(optionsContainerView)
        addSubview(doneButton)
        optionsContainerView.addSubview(button0)
        optionsContainerView.addSubview(button1)
        optionsContainerView.addSubview(button2)
        optionsContainerView.addSubview(button3)
        optionsContainerView.addSubview(button4)
        optionsContainerView.addSubview(button5)
        optionsContainerView.addSubview(button6)
        optionsContainerView.addSubview(button7)
        optionsContainerView.addSubview(button8)
        optionsContainerView.addSubview(button9)
        button0.addSubview(label0)
        button0.addSubview(checkbox0)
        button1.addSubview(label1)
        button1.addSubview(checkbox1)
        button2.addSubview(label2)
        button2.addSubview(checkbox2)
        button3.addSubview(label3)
        button3.addSubview(checkbox3)
        button4.addSubview(label4)
        button4.addSubview(checkbox4)
        button5.addSubview(label5)
        button5.addSubview(checkbox5)
        button6.addSubview(label6)
        button6.addSubview(checkbox6)
        button7.addSubview(label7)
        button7.addSubview(checkbox7)
        button8.addSubview(label8)
        button8.addSubview(checkbox8)
        button9.addSubview(label9)
        button9.addSubview(checkbox9)

        
        addConstraintsWithString("H:|[v0]|")
        addConstraintsWithString("H:|[v1]|")
        addConstraintsWithString("H:|-80-[v2]-80-|")
        addConstraintsWithString("V:|-80-[v0(18)]-8-[v1]-10-[v2(50)]-10-|")
        addConstraintsWithString("H:|-5-[b0]-5-[b1]-5-|")
        addConstraintsWithString("H:[b0(==b1)]")
        addConstraintsWithString("H:|-5-[b2]-5-[b3]-5-|")
        addConstraintsWithString("H:[b2(==b3)]")
        addConstraintsWithString("H:|-5-[b4]-5-[b5]-5-|")
        addConstraintsWithString("H:[b4(==b5)]")
        addConstraintsWithString("H:|-5-[b6]-5-[b7]-5-|")
        addConstraintsWithString("H:[b6(==b7)]")
        addConstraintsWithString("H:|-5-[b8]-5-[b9]-5-|")
        addConstraintsWithString("H:[b8(==b9)]")
        addConstraintsWithString("V:|[b0]-5-[b2]-5-[b4]-5-[b6]-5-[b8]|")
        addConstraintsWithString("V:[b0(==b2)]")
        addConstraintsWithString("V:[b0(==b4)]")
        addConstraintsWithString("V:[b0(==b6)]")
        addConstraintsWithString("V:[b0(==b8)]")
        addConstraintsWithString("V:|[b1]-5-[b3]-5-[b5]-5-[b7]-5-[b9]|")
        addConstraintsWithString("V:[b1(==b3)]")
        addConstraintsWithString("V:[b1(==b5)]")
        addConstraintsWithString("V:[b1(==b7)]")
        addConstraintsWithString("V:[b1(==b9)]")
        addConstraintsWithString("H:|[l0]|")
        addConstraintsWithString("H:|-68-[c0(40)]")
        addConstraintsWithString("V:|-13-[l0(20)]-5-[c0(40)]")
        addConstraintsWithString("H:|[l1]|")
        addConstraintsWithString("H:|-68-[c1(40)]")
        addConstraintsWithString("V:|-13-[l1(20)]-5-[c1(40)]")
        addConstraintsWithString("H:|[l2]|")
        addConstraintsWithString("H:|-68-[c2(40)]")
        addConstraintsWithString("V:|-13-[l2(20)]-5-[c2(40)]")
        addConstraintsWithString("H:|[l3]|")
        addConstraintsWithString("H:|-68-[c3(40)]")
        addConstraintsWithString("V:|-13-[l3(20)]-5-[c3(40)]")
        addConstraintsWithString("H:|[l4]|")
        addConstraintsWithString("H:|-68-[c4(40)]")
        addConstraintsWithString("V:|-13-[l4(20)]-5-[c4(40)]")
        addConstraintsWithString("H:|[l5]|")
        addConstraintsWithString("H:|-68-[c5(40)]")
        addConstraintsWithString("V:|-13-[l5(20)]-5-[c5(40)]")
        addConstraintsWithString("H:|[l6]|")
        addConstraintsWithString("H:|-68-[c6(40)]")
        addConstraintsWithString("V:|-13-[l6(20)]-5-[c6(40)]")
        addConstraintsWithString("H:|[l7]|")
        addConstraintsWithString("H:|-68-[c7(40)]")
        addConstraintsWithString("V:|-13-[l7(20)]-5-[c7(40)]")
        addConstraintsWithString("H:|[l8]|")
        addConstraintsWithString("H:|-68-[c8(40)]")
        addConstraintsWithString("V:|-13-[l8(20)]-5-[c8(40)]")
        addConstraintsWithString("H:|[l9]|")
        addConstraintsWithString("H:|-68-[c9(40)]")
        addConstraintsWithString("V:|-13-[l9(20)]-5-[c9(40)]")




    }
    
    func addConstraintsWithString(_ str:String){
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: str, options: NSLayoutFormatOptions(), metrics: nil, views:
            ["v0":promptLabel,
             "v1":optionsContainerView,
             "v2":doneButton,
             "b0":button0,
             "b1":button1,
             "b2":button2,
             "b3":button3,
             "b4":button4,
             "b5":button5,
             "b6":button6,
             "b7":button7,
             "b8":button8,
             "b9":button9,
             "l0":label0,
             "l1":label1,
             "l2":label2,
             "l3":label3,
             "l4":label4,
             "l5":label5,
             "l6":label6,
             "l7":label7,
             "l8":label8,
             "l9":label9,
             "c0":checkbox0,
             "c1":checkbox1,
             "c2":checkbox2,
             "c3":checkbox3,
             "c4":checkbox4,
             "c5":checkbox5,
             "c6":checkbox6,
             "c7":checkbox7,
             "c8":checkbox8,
             "c9":checkbox9
            ]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
