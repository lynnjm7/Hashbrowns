#import <XCTest/XCTest.h>
#import "NSString+Hashes.h"

@interface NSString_HashesTests : XCTestCase

@end

@implementation NSString_HashesTests {
    NSString* myStr;
}

- (void)setUp {
    [super setUp];
     myStr = @"Hello world";
}

- (void)tearDown {
    [super tearDown];
}

- (void)testMD5Hash {
    NSString *md5 = [myStr md5];
    XCTAssertEqualObjects(md5, @"3e25960a79dbc69b674cd4ec67a72c62");
}

- (void) testSHA1Hash {
    NSString *sha1 = [myStr sha1];
    XCTAssertEqualObjects(sha1, @"7b502c3a1f48c8609ae212cdfb639dee39673f5e");
}

- (void)testSHA256Hash {
    NSString *sha256 = [myStr sha256];
    XCTAssertEqualObjects(sha256, @"64ec88ca00b268e5ba1a35678a1b5316d212f4f366b2477232534a8aeca37f3c");
}

- (void)testBase64Hash {
    NSString *base64 = [myStr base64];
    XCTAssertEqualObjects(base64, @"SGVsbG8gd29ybGQ=");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
