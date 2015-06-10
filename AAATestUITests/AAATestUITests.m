//
//  AAATestUITests.m
//  AAATestUITests
//
//  Created by Aijaz Ansari on 6/9/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>
#import <XCTest/XCUIElementQuery.h>
#import <XCTest/XCUIElement.h>

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

-(void) testScrolling {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElementQuery * tableElement = app.tables;
    XCUIElement * table = tableElement.element;
    [table swipeUp];
    
    [app.tables.staticTexts[@"Commander Zhao"] tap];
    [app.staticTexts[@"My_ACCID"] tap];
    [app.staticTexts[@"My_ACCLabel"] tap];
    [[[XCUIApplication alloc] init].staticTexts[@"My_ACCID"] tap];
    
    [[app.navigationBars matchingIdentifier:@"Detail"].buttons[@"Master"] tap];
    
}

-(void) testMultiple {
    XCUIApplication *app = [[XCUIApplication alloc] init];

    XCUIElementQuery *  staticTexts = app.tables.cells.staticTexts;
    NSUInteger numCells = [staticTexts count];

    for (NSUInteger i = 0; i < numCells; i++) {
        XCUIElement * cell = [staticTexts elementAtIndex:i];
        [cell tap];
        [[app.navigationBars matchingIdentifier:@"Detail"].buttons[@"Master"] tap];
        if (i == 3) {
            // We don't really need to see all the rows for this demo.
            break;
        }
    }
}




@end
