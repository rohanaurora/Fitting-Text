//
//  SampleViewController.m
//  Fitting-Text
//
//  Created by Rohan Aurora on 1/18/15.
//  Copyright (c) 2015 Rohan Aurora. All rights reserved.
//

#import "SampleViewController.h"
#import "NSString+TruncateWidth.h"

@interface SampleViewController ()

@property (weak, nonatomic) IBOutlet UIButton *mainButton;

@end

@implementation SampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Min length to be displayed is flexible based on space occupied by second string
    // Input length ranges from 9 to 20+ characters.
    NSString *firstString = @"FirstPartOfTheStringIsDynamic";
    
    // Min length to be displayed 9 characters.
    // Input length ranges from 9 to 18 characters.
    NSString *secondString = @"123456789-Second";
    
    CGSize sizeOfSecondString = [secondString sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:17.0f]}];
    CGSize sizeOfButton = self.mainButton.frame.size;
    
    // Calculate the remaining width to accomodate first string
    CGFloat sizeOfFirstString = sizeOfButton.width - sizeOfSecondString.width;
    
    firstString = [firstString stringByTruncatingToWidth:sizeOfFirstString withFont:[UIFont systemFontOfSize:17.0f]];
    NSString *buttonTitleString = [NSString stringWithFormat:@"%@ %@", firstString, secondString];
    self.mainButton.titleLabel.adjustsFontSizeToFitWidth = NO;
    
    [self.mainButton setTitle:buttonTitleString forState:UIControlStateNormal];
    
}



@end
