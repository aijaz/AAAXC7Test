//
//  AAATestUITests.m
//  AAATestUITests
//
//  Created by Aijaz Ansari on 6/9/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>

@interface AAATestUITests : XCTestCase

@end

@implementation AAATestUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app.tables.staticTexts[@"Ang"] tap];
    [[app.navigationBars matchingIdentifier:@"Detail"].buttons[@"Master"] tap];
    

}



@end
