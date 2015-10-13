//
//  colorStruct.swift
//  QuotesEZ
//
//  Created by Gabriel Querbes on 10/6/15.
//  Copyright © 2015 The Modern Tech. All rights reserved.
//

import Foundation
import UIKit
//start of ColorStruct
struct ColorStruct{
    //ColorArray is an array of different colors, each with their own values for RGB and alpha
    let colorArray = [
        UIColor(red:77/255.0, green: 75/255.0, blue: 82/255.0, alpha:1.0),
        UIColor(red:222/255.0, green: 171/255.0, blue: 66/255.0, alpha:1.0),
        UIColor(red:223/255.0, green: 86/255.0, blue: 66/255.0, alpha:1.0),
    ]
    
    
    //function to get return one of the above generated colors
    func getRandomColor() ->UIColor{
        let randomNumber = Int(arc4random_uniform(UInt32(colorArray.count)))
        return colorArray[randomNumber]
    }
    
    
}

