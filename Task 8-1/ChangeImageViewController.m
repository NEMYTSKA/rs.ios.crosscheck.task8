//
//  ChangeImageViewController.m
//  Task 8-1
//
//  Created by ilia on 18/07/2021.
//  Copyright © 2021 ILLIA NEMYTSKA. All rights reserved.
//

#import "ChangeImageViewController.h"

@interface ChangeImageViewController ()

@property (weak, nonatomic) IBOutlet UIButton *planetButton;
@property (weak, nonatomic) IBOutlet UIButton *headButton;
@property (weak, nonatomic) IBOutlet UIButton *treeButton;
@property (weak, nonatomic) IBOutlet UIButton *landcsapeButton;

@end

@implementation ChangeImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Drawings";
    
}
- (IBAction)planetTappet:(id)sender {
    self.myImage = @"Planet";
    //    NSLog(@"%@", self.myImage);
    [self back:sender];
}
- (IBAction)headTappet:(id)sender {
    self.myImage = @"Head";
    //    NSLog(@"%@", self.myImage);
        [self back:sender];
}
- (IBAction)treeTappet:(id)sender {
     self.myImage = @"Tree";
    //    NSLog(@"%@", self.myImage);
        [self back:sender];
}
- (IBAction)landscapeTappet:(id)sender {
      self.myImage = @"Landscape";
    //    NSLog(@"%@", self.myImage);
        [self back:sender];
}





-(void)back:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];

}





@end
