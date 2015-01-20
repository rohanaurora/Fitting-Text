//
//  NSString+TruncateWidth.h
//  Fitting-Text
//
//  Created by Rohan Aurora on 1/20/15.
//  Copyright (c) 2015 Rohan Aurora. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString *const kEllipsis;

@interface NSString (TruncateWidth)

- (NSString*)stringByTruncatingToWidth:(CGFloat)width withFont:(UIFont *)font;

@end
