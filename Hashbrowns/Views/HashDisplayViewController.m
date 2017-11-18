//
//  HashDisplayViewControllers.m
//  Hashbrowns
//
//  Created by admin on 11/17/17.
//  Copyright © 2017 jml. All rights reserved.
//

#import "HashDisplayViewController.h"

@interface HashDisplayViewController ()

@end

@implementation HashDisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _md5ValueLabel.stringValue = [self.hashInput calculateMD5Hash];
    _sha1ValueLabel.stringValue = [self.hashInput calculateSHA1Hash];
    _sha256ValueLabel.stringValue = [self.hashInput calculateSHA256Hash];
    _base64ValueLabel.stringValue = [self.hashInput calculateBase64Hash];
}

@end
