//
//  DetailViewController.h
//  AAATest
//
//  Created by Aijaz Ansari on 6/9/15.
//  Copyright © 2015 Euclid Software, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

