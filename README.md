Fitting-Text
=======

There are 2 strings separated by a space forming a `UIButton` title. The button frames cannot be changed. Device is iPhone portrait only. How can I dynamically control the lengths of the 2 strings based on the requirements? 

**Requirements -**

Second string has a minimum length of 9 characters which will be shown at all times. 
If first string has a length greater than 15 characters, it can be truncated from the right side, ending it with ellipsis (...) 


**Solution -**

I solved the above puzzle by calculating the remaining size where the first string can be accommodated. Used a `NSString` category to truncate with ellipsis. 

`Size of First String = Size of Button - Size of Second String`

Output - 

![enter image description here][1]


  [1]: http://i.stack.imgur.com/Joq8r.png


  [1]: http://i.stack.imgur.com/DSkM2.png
  
 [2]: http://i.imgur.com/56v7cRg.png