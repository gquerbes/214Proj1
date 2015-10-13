//
//  ViewController.swift
//  QuotesEZ
//
//  Created by Gabriel Querbes on 9/22/15.
//  Copyright © 2015 The Modern Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   
    //reference to label on screen with name lblDateLabel
    @IBOutlet weak var lblDateLabel: UILabel!
    
    //when the button is touched and let go, a random quote will be shown
    @IBAction func btnTouchUp(sender: AnyObject) {
        UpdateQuotesLabel()
    }
    
    // @IBOutlet weak var lblDateLabel: UILabel!
    @IBOutlet weak var lblQuote: UILabel!
    
    //When the user starts to shake, make the quote label invisible
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        self.lblQuote.alpha = 0.0
    }
    
    
    // This function makes it so when the device is shaken, the screen will show a new quote. Use motion end so nothing happens until the user is done shaking
    override func motionEnded(motion:UIEventSubtype,
        withEvent event: UIEvent?){
            if motion == .MotionShake{
            UpdateQuotesLabel()
            }
    }
   
    //function used to generate random quotes, is called by other functions .
    func UpdateQuotesLabel(){
        let quotes = QuotesClass()
        //take 3 milliseconds to animate the alpha of the label.
        UIView.animateWithDuration(3.0,animations: {self.lblQuote.alpha = 1.0})
        lblQuote.text = quotes.getRandomQuote()
        let colors = ColorStruct()
        self.view.backgroundColor=colors.getRandomColor()
    }
    
    //once the view loads i will get time and date and display it on the text box
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([.Hour, .Minute], fromDate:date)
        let hour = components.hour
        let minute = components.minute
        
        lblDateLabel.text = "The Current Time is \(hour) : \(minute)"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

