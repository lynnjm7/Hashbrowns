//
//  HashInput.m
//  Hashbrowns
//
//  Created by admin on 11/17/17.
//  Copyright © 2017 jml. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+Hashes.h"
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
    return [self.input md5];
}

-(NSString*)calculateSHA1Hash {
    return [self.input sha1];
}

-(NSString*)calculateSHA256Hash {
    return [self.input sha256];
}

-(NSString*)calculateBase64Hash  {
    return [self.input base64];
}


@end
