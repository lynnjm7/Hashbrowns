//
//  HashDisplayViewControllers.h
//  Hashbrowns
//
//  Created by admin on 11/17/17.
//  Copyright © 2017 jml. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HashInput.h"

@interface HashDisplayViewController : NSViewController
@property (weak) IBOutlet NSTextField *md5Label;
@property (weak) IBOutlet NSTextField *sha1Label;
@property (weak) IBOutlet NSTextField *sha256Label;
@property (weak) IBOutlet NSTextField *base64Label;

@property (weak) IBOutlet NSTextField *md5ValueLabel;
@property (weak) IBOutlet NSTextField *sha1ValueLabel;
@property (weak) IBOutlet NSTextField *sha256ValueLabel;
@property (weak) IBOutlet NSTextField *base64ValueLabel;

@property HashInput *hashInput;

@end
