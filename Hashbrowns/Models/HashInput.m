//
//  HashInput.m
//  Hashbrowns
//
//  Created by admin on 11/17/17.
//  Copyright © 2017 jml. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HashInput.h"

@implementation HashInput

-(instancetype)initWithInput:(NSString*)input {
    self = [super init];
    if (self) {
        self.input = input;
    }
    
    return self;
}

-(NSString*)calculateMD5Hash {
    return @"Hello world";
}

-(NSString*)calculateSHA1Hash {
    return @"Hello world";
}

-(NSString*)calculateSHA256Hash  {
    return @"Hello world";
}

-(NSString*)calculateBase64Hash  {
    NSData *data = [self.input dataUsingEncoding:NSUTF8StringEncoding];
    NSString *base64Encoding = [data base64EncodedStringWithOptions:0];
    return base64Encoding;
}


@end
