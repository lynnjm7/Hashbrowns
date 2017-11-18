//
//  ViewController.m
//  Hashbrowns
//
//  Created by admin on 11/17/17.
//  Copyright © 2017 jml. All rights reserved.
//

#import "MainViewController.h"
#import "HashDisplayViewController.h"

@implementation MainViewController {
    HashInput *hashInput;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"DisplayHashes"]) {
        HashDisplayViewController *destination = [segue destinationController];
        destination.inputValue = [self.testArea stringValue];
    }
}
@end
