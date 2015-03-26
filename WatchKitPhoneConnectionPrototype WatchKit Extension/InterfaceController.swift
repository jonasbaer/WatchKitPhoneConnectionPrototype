//
//  InterfaceController.swift
//  WatchKitPhoneConnectionPrototype WatchKit Extension
//
//  Created by Jonas Baer on 26.03.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//


// HELPED A LOT !!! - http://www.raywenderlich.com/96589/watchkit-tutorial-swift-tables-network-requests


import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var messageReceivedFromPhone: WKInterfaceLabel!
    @IBOutlet weak var buttonLabelSendToPhone: WKInterfaceButton!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sendToPhoneButtonPressed() {
        WKInterfaceController.openParentApplication(["request": "refreshData"],
            reply: { (replyInfo, error) -> Void in
                // TODO: process reply data
                NSLog("Reply: \(replyInfo)")
        })

    }



}
