//
//  MyButton.m
//  Task 8-1
//
//  Created by ilia on 18/07/2021.
//  Copyright © 2021 ILLIA NEMYTSKA. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

-(void)awakeFromNib {
    [super awakeFromNib];
    
    [self.layer setShadowOffset:CGSizeMake(0, 0)];
    [self.layer setShadowRadius:1];
    
    [self.layer setBorderWidth:1];
    [self.layer setCornerRadius:10];
    [self.layer setBorderColor:[[UIColor grayColor] colorWithAlphaComponent:0.3].CGColor];
//    [self.layer setShadowOpacity:1];
    
}

-(void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    
    if (highlighted) {
        [self.layer setShadowOffset:CGSizeMake(0, 0)];
        [self.layer setShadowColor:[UIColor colorNamed:@"Light Green Sea"].CGColor];
        [self.layer setShadowRadius:1];
        [self.layer setShadowOpacity:1];
        [self setTintColor:[UIColor colorNamed:@"Light Green Sea"]];

        
    } else {
        [self.layer setShadowOffset:CGSizeMake(0, 0)];
        [self.layer setShadowColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor];
        [self.layer setShadowRadius:1];
        [self.layer setShadowOpacity:0];
        
        [self.layer setBorderColor:[[UIColor grayColor] colorWithAlphaComponent:0.4].CGColor];

    }
}



@end
