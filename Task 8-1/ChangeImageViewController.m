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
- (IBAction)planetButtonTappet:(UIButton *)sender {
    self.myImage = @"Planet";

    NSLog(@"%@", self.myImage);
//    self.myImageView.currentImage = @"Planet";
    [self back:sender];
}

- (IBAction)headButtonTappet:(id)sender {
    self.myImage = @"Head";
    [self back:sender];
}
- (IBAction)treeButtonTappet:(id)sender {
    self.myImage = @"Tree";
    [self back:sender];
}
- (IBAction)landscpeButtonTappet:(id)sender {
    self.myImage = @"Landscape";
    [self back:sender];
}



-(void)back:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];

}





@end
