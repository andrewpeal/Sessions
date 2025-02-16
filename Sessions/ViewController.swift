//
//  ViewController.swift
//  Sessions
//
//  Created by Alex Perathoner on 14/08/2019.
//  Copyright © 2019 Alex Perathoner. All rights reserved.
//

import Cocoa
import SafariServices.SFSafariApplication


class ViewController: NSViewController {

    @IBOutlet var appNameLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appNameLabel.stringValue = "Sessions";
    }
    
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "AndrewP.Sessions-Extensions") { error in
            if let _ = error {
				NSLog("Couldn't open Safari Preferences. Please enable the extension manually")
            }
        }
    }

}
