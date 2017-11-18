//
//  HashInputTests.m
//  HashbrownsTests
//
//  Created by admin on 11/17/17.
//  Copyright © 2017 jml. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HashInput.h"

@interface HashInputTests : XCTestCase

@end

@implementation HashInputTests {
    HashInput *hashInput;
}

- (void)setUp {
    [super setUp];
    hashInput = [[HashInput alloc] initWithInput:@"Hello world"];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMD5Hash {
    NSString *md5 = [hashInput calculateMD5Hash];
    XCTAssertEqualObjects(md5, @"3e25960a79dbc69b674cd4ec67a72c62");
}

- (void) testSHA1Hash {
    NSString *sha1 = [hashInput calculateSHA1Hash];
    XCTAssertEqualObjects(sha1, @"7b502c3a1f48c8609ae212cdfb639dee39673f5e");
}

- (void)testSHA256Hash {
    NSString *sha256 = [hashInput calculateSHA256Hash];
    XCTAssertEqualObjects(sha256, @"64ec88ca00b268e5ba1a35678a1b5316d212f4f366b2477232534a8aeca37f3c");
}

- (void)testBase64Hash {
    NSString *base64 = [hashInput calculateBase64Hash];
    XCTAssertEqualObjects(base64, @"SGVsbG8gd29ybGQ=");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
