//
//  NSString+Hashes.h
//  Hashbrowns
//
//  Created by admin on 11/17/17.
//  Copyright © 2017 jml. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Hashes)
-(NSString*)md5;
-(NSString*)sha1;
-(NSString*)sha256;
@end
