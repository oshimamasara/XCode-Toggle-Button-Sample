//
//  okButton.swift
//  toggleButton
//
//  Created by TakayukiOshima on 2019/02/22.
//  Copyright © 2019 TakayukiOshima. All rights reserved.
//

import UIKit

class okButton: UIButton {
    var isOn = false
    
    override init(frame: CGRect){
        super.init(frame:frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton(){
        layer.borderWidth = 3
        layer.borderColor = Colors.codecampButtonColor.cgColor
        layer.cornerRadius = frame.size.height/2
        
        setTitleColor(Colors.codecampButtonColor, for: .normal)
        addTarget(self, action: #selector(okButton.buttonPressed), for:  .touchUpInside) // text change
    }
    
    
    @objc func buttonPressed(){
        activateButton(bool: !isOn) // ! 無いとボタン一回押したら切り替わらない
    }
    
    func activateButton(bool: Bool){
        isOn = bool
        
        let color = bool ? Colors.codecampButtonColor: .white
        let title = bool ? "了解済み":"了解"
        let titleColor = bool ? .white: Colors.codecampButtonColor
        
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = color
    }
    
}
