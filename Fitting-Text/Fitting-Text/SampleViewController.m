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
    NSString *firstString = @"FirstPartOfTheStringIsDynamic";
    
    // Min length to be displayed 9 characters.
    NSString *secondString = @"123456789-Second";
    
    // Size
    CGSize sizeOfSecondString = [secondString sizeWithAttributes:@{NSFontAttributeName:self.mainButton.titleLabel.font}];
    CGSize sizeOfButton = self.mainButton.frame.size;
    
    // Padding
    UIEdgeInsets buttonInsets = self.mainButton.contentEdgeInsets;
    CGFloat padding = buttonInsets.right + buttonInsets.left;
    
    // Calculate the remaining width to accomodate first string
    CGFloat sizeOfFirstString = sizeOfButton.width - sizeOfSecondString.width - padding;
    
    firstString = [firstString stringByTruncatingToWidth:21.1f withFont:self.mainButton.titleLabel.font];
    
    NSString *buttonTitleString = [NSString stringWithFormat:@"%@ %@", firstString, secondString];
    self.mainButton.titleLabel.adjustsFontSizeToFitWidth = NO;
    
    [self.mainButton setTitle:buttonTitleString forState:UIControlStateNormal];
    
}



@end
