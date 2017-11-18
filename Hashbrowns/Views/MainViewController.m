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
    
    hashInput = [[HashInput alloc] init];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)generateHashButtonPressed:(id)sender {
    NSLog(@"hash button pressed");
//    NSLog(@"%@", [_testArea stringValue]);
}

- (void)prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"preparing for segue...");
    if ([segue.identifier isEqualToString:@"DisplayHashes"]) {
        NSLog(@"display hashes seque...");
        HashDisplayViewController *destination = [segue destinationController];
        destination.hashInput = self->hashInput;
    }
}
@end
