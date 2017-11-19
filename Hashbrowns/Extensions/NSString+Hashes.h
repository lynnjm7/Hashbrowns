#import <Foundation/Foundation.h>

@interface NSString (Hashes)

/**
    @brief Calulcate the MD5 hash on an NSString
 
    @return NSString representation of the MD5 hash
 */
-(NSString*)md5;

/**
    @brief Calculate the SHA-1 hash on an NSString
 
    @return NSString representation of the SHA-1 hash
 */
-(NSString*)sha1;

/**
    @brief Calculate the SHA-256 hash on an NSString
 
    @return NSString representation of the SHA-256 hash
 */
-(NSString*)sha256;

/**
    @brief Calculate the Base-64 encoding of an NSString
 
    @return NSString representation of the Base-64 encoding
 */
-(NSString*)base64;
@end
