//
//  QuotesClass.swift
//  QuotesEZ
//
//  Created by Gabriel Querbes on 9/29/15.
//  Copyright © 2015 The Modern Tech. All rights reserved.
//

import Foundation
//class to return random quote
class QuotesClass{
    var quotesArray = ["Time is Money","Practice makes perfect",
        "No Pain no gain","Don't give up","Quit early, quit often",
        "When strong winds blows"]
    
    //function returns quote by using a random number for the index and using quoteArray.count to ensure that does not go out of bounds
    func getRandomQuote() ->String
    {
        let randomNumber = Int (arc4random_uniform(UInt32(quotesArray.count)))
        return quotesArray[randomNumber]
    }
    
    
}
