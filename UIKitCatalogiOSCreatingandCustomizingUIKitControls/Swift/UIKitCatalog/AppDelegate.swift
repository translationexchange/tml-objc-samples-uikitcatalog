/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The application-specific delegate class.
*/

let TML_APPLICATION_KEY = ""
let TML_APPLICATION_TOKEN = ""

import UIKit

@UIApplicationMain
class AppDelegate: NSObject, UIApplicationDelegate, UISplitViewControllerDelegate {
    // MARK: Properties

    var window: UIWindow?

    // MARK: UIApplicationDelegate

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let splitViewController = window!.rootViewController as! UISplitViewController
        
        TML.sharedInstanceWithApplicationKey(TML_APPLICATION_KEY, accessToken: TML_APPLICATION_TOKEN)
        TML.sharedInstance().configuration.translationEnabled = true
        
        splitViewController.delegate = self
        splitViewController.preferredDisplayMode = .AllVisible

        return true
    }
    
    // MARK: UISplitViewControllerDelegate

    func targetDisplayModeForActionInSplitViewController(splitViewController: UISplitViewController) -> UISplitViewControllerDisplayMode {
        return .AllVisible
    }
}
