//
//  HashInput.h
//  Hashbrowns
//
//  Created by admin on 11/17/17.
//  Copyright © 2017 jml. All rights reserved.
//

#ifndef HashInput_h
#define HashInput_h

@interface HashInput : NSObject
@property (weak) NSString *input;

-(instancetype)initWithInput:(NSString*)input;

-(NSString*)calculateMD5Hash;
-(NSString*)calculateSHA1Hash;
-(NSString*)calculateSHA256Hash;
-(NSString*)calculateBase64Hash;


@end
#endif /* HashInput_h */
