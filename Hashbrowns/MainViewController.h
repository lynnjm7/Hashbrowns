//
//  ViewController.h
//  Hashbrowns
//
//  Created by admin on 11/17/17.
//  Copyright © 2017 jml. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MainViewController : NSViewController

@property (weak) IBOutlet NSButton *generateHashButton;
@property (weak) IBOutlet NSTextField *testArea;
@property (weak) IBOutlet NSTextField *inputLabel;

- (IBAction)generateHashButtonPressed:(id)sender;

@end

