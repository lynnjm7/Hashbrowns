#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

#import "NSString+Hashes.h"

@implementation NSString (Hashes)

- (NSString*)md5 {
    const char *str = [self UTF8String];
    uint8_t result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(str, (int)strlen(str), result);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; ++i) {
        [output appendFormat:@"%02x", result[i]];
    }
    
    return output;
}

-(NSString*)sha1 {
    const char *str = [self UTF8String];
    uint8_t result[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(str, (int)strlen(str), result);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH];
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; ++i) {
        [output appendFormat:@"%02x", result[i]];
    }
    
    return output;
}

-(NSString*)sha256 {
    const char *str = [self UTF8String];
    uint8_t result[CC_SHA256_DIGEST_LENGTH];
    
    CC_SHA256(str, (int)strlen(str), result);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH];
    for (int i = 0; i < CC_SHA256_DIGEST_LENGTH; ++i) {
        [output appendFormat:@"%02x", result[i]];
    }
    
    return output;
}

-(NSString*)base64 {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
}

@end
