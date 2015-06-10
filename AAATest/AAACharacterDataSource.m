//
//  AAACharacterDataSource.m
//  AAATest
//
//  Created by Aijaz Ansari on 6/10/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

#import "AAACharacterDataSource.h"


@implementation AAACharacterDataSource

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.characters = [NSMutableArray arrayWithArray: @[
                            @"Ang",
                            @"Katara",
                            @"Sokka",
                            @"Toph",
                            @"Zuko",
                            @"Appa",
                            @"Momo",
                            @"Uncle Iroh",
                            @"Azula",
                            @"Suki",
                            @"Mai",
                            @"Ty Lee",
                            @"Fire Lord Ozai",
                            @"Avatar Roku",
                            @"Bumi",
                            @"Combustion Man",
                            @"Sozin",
                            @"Commander Zhao",
                            @"Jet",
                            @"Cabbage Merchant",
                            
                            ]];
    }
    return self;
}

#pragma mark - UITableViewDataSource

-(NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return ([self.characters count]);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDate *object = self.characters[indexPath.row];
    cell.textLabel.text = [object description];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.characters removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

#pragma mark - 

-(void)yell {
    NSInteger count = [self.characters count];
    NSInteger i;
    for (i = 0; i < count; i++) {
        self.characters[i] = [self.characters[i] uppercaseString];
    }
    
    if (i < 0) {
        self.characters[i] = @"WAT!";
    }
}


@end
