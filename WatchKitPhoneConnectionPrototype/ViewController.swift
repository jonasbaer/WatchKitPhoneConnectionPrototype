//
//  ViewController.swift
//  WatchKitPhoneConnectionPrototype
//
//  Created by Jonas Baer on 26.03.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageReceivedFromWatch: UILabel!
    @IBOutlet weak var messageForWatch: UITextField!



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendToWatchButtonPressed(sender: UIButton) {
        println("PHONE: Sending not yet possible :(")
        updateApp()
    }

    func updateApp() {
        messageReceivedFromWatch.hidden = false
        messageReceivedFromWatch.text = "Placeholder for the text from the Watch.."
    }
}

