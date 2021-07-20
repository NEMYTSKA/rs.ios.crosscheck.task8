//
//  ColorViewController.m
//  Task 8-1
//
//  Created by ilia on 20/07/2021.
//  Copyright © 2021 ILLIA NEMYTSKA. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *colorButton;




@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupButton];
}

- (IBAction)tappet:(id)sender {
    [self.view removeFromSuperview];
    NSLog(@"Remove");
}

- (void) setupButton {
    for ( UIButton *i  in self.colorButton) {
        i.layer.cornerRadius = 10;
    }
}



@end
