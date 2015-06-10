//
//  AAACharacterDataSource.h
//  AAATest
//
//  Created by Aijaz Ansari on 6/10/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AAACharacterDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *characters;

-(void) yell;

@end
