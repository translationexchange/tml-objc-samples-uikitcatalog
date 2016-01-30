/*
    Copyright (C) 2015 Apple Inc. All Rights Reserved.
    See LICENSE.txt for this sample’s licensing information
    
    Abstract:
    The main source file to this application.
*/

@import UIKit;

#import "AAPLAppDelegate.h"

#define MyApplicationKey @""
#define MyAccessToken @""

int main(int argc, char *argv[]) {
    @autoreleasepool {
        [TML sharedInstanceWithApplicationKey:MyApplicationKey accessToken:MyAccessToken];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AAPLAppDelegate class]));
    }
}
