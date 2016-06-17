//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Mahesh Sawant on 6/15/16.
//  Copyright © 2016 Mahesh Sawant. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    var count = 0

    //MARK : Initializations
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x:0,y:0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(_:)), forControlEvents: .TouchDown)
        addSubview(button)
  
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
        
    }
    
    func ratingButtonTapped(button: UIButton){
        
        print("Tapped it")
    }
    

}
