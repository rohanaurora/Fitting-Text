Fitting-Text
=======

There are 2 strings separated by a space forming a `UIButton` title. The button frames cannot be changed. Device is iPhone portrait only. How can I dynamically control the lengths of the 2 strings based on the requirements? 

**Requirements -**

Second string has a minimum length of 9 characters which will be shown at all times. 
If first string has a length greater than 15 characters, it can be truncated from the right side, ending it with ellipsis (...) 

I would not like to hardcode values using `if-else` considering all combinations. Looking for a way to set ratio or set strings dynamically - so that at least the minimum display requirements are met. 

    // Min length to be displayed is flexible based on space occupied by second string
    // Input length ranges from 9 to 20+ characters.
    NSString *firstString = @"FirstPartOfTheStringIsDynamic";
    
    // Min length to be displayed 9 characters.
    // Input length ranges from 9 to 18 characters.
    NSString *secondString = @"123456789-Second";
    
    if (firstString.length > 15) {
        firstString = [[firstString substringToIndex:15] stringByAppendingString:@"..."];
    }
    
    self.mainButton.titleLabel.adjustsFontSizeToFitWidth = NO;
    NSString *buttonTitleString = [NSString stringWithFormat:@"%@ %@", firstString, secondString];
    
    [self.mainButton setTitle:buttonTitleString forState:UIControlStateNormal];


**Attempts -**

1. I tried calculating the number of characters that can be fit in the given `UIButton` by hardcoding values and giving second string priority. That's not a good practice.
2. Cannot change the font size. So, I tried looking into solutions that dynamically calculates number of characters that fit in the given space. 

In the screenshot below, I'd like to truncate first string and make room for second string to display completely -

![][1]

I solved the above puzzle by calculating the remaining size where the first string can be accommodated. Used a `NSString` category to truncate with ellipsis. 

`Size of First String = Size of Button - Size of Second String`

Here's the updated demo - https://github.com/rohanaurora/Fitting-Text

![enter image description here][1]


  [1]: http://i.stack.imgur.com/Joq8r.png


  [1]: http://i.stack.imgur.com/DSkM2.png