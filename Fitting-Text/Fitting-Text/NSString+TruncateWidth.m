//
//  NSString+TruncateWidth.m
//  Fitting-Text
//
//  Created by Rohan Aurora on 1/20/15.
//  Copyright (c) 2015 Rohan Aurora. All rights reserved.
//

#import "NSString+TruncateWidth.h"

NSString *const kEllipsis = @"…";

@implementation NSString (TruncateWidth)

- (NSString*)stringByTruncatingToWidth:(CGFloat)width withFont:(UIFont *)font
{
    // Create copy that will be the returned result
    NSMutableString *truncatedString = [self mutableCopy];
    
    // Make sure string is longer than requested width
    if ([self sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17.0f]}].width > width)
    {
        // Accommodate for ellipsis we'll tack on the end
        width -= [kEllipsis sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17.0f]}].width;
        
        // Get range for last character in string
        NSRange range = NSMakeRange(truncatedString.length-1, 1);
        
        // Loop, deleting characters until string fits within width
        while ([truncatedString sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17.0f]}].width > width)
        {
            // Delete character at end
            [truncatedString deleteCharactersInRange:range];
            
            // Move back another character
            range.location--;
        }
        
        // Append ellipsis
        [truncatedString replaceCharactersInRange:range withString:kEllipsis];
    }
    
    return truncatedString;
}

@end
