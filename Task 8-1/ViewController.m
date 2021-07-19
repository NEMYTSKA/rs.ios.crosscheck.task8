//
//  ViewController.m
//  Task 8-1
//
//  Created by ilia on 18/07/2021.
//  Copyright © 2021 ILLIA NEMYTSKA. All rights reserved.
//

#import "ViewController.h"
#import "ChangeImageViewController.h"
#import "AnimationView.h"
#import "MyButton.h"

@interface ViewController ()

@property (strong, nonatomic) ChangeImageViewController *changeVC;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.changeVC = [ChangeImageViewController new];
    [self setupNavigationItems];
    self.myImage = @"Planet";
    [self addAnimationView];
    [self configureButtons];
    [self configLabel];
    
    
    self.myImage = @"Head";
    
    
}

- (void) configLabel {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 550, 350, 84)];
    
    
    [label setText:@"Привет!!!\rСделал всё что смог сам)\rНе смог передать инфу от кнопок со следующего Viewcontroller на этот. И вообще не понимаю как анимировать."];
    label.font = [UIFont fontWithName:@"Montserrat-Regular" size:12];
    label.textColor = UIColor.redColor;
    label.layer.borderWidth = 1;
    label.layer.borderColor = [UIColor redColor].CGColor;
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:label];
    
}

-(void)configureButtons {
    MyButton *openPalette = [[MyButton alloc] initWithFrame:CGRectMake(20, 452, 163, 32)];
    MyButton *draw = [[MyButton alloc] initWithFrame:CGRectMake(243, 452, 91, 32)];
    MyButton *timer = [[MyButton alloc] initWithFrame:CGRectMake(20, 504, 151, 32)];
    MyButton *share = [[MyButton alloc] initWithFrame:CGRectMake(239, 504, 95, 32)];
    
    [openPalette setTitle:@"Open Palette" forState:UIControlStateNormal];
    [draw setTitle:@"Draw" forState:UIControlStateNormal];
    [timer setTitle:@"Timer" forState:UIControlStateNormal];
    [share setTitle:@"Share" forState:UIControlStateNormal];
    
    [openPalette.titleLabel setFont:[UIFont fontWithName:@"Montserrat-Regular" size:18]];
    [draw.titleLabel setFont:[UIFont fontWithName:@"Montserrat-Regular" size:18]];
    [timer.titleLabel setFont:[UIFont fontWithName:@"Montserrat-Regular" size:18]];
    [share.titleLabel setFont:[UIFont fontWithName:@"Montserrat-Regular" size:18.0f]];
    
    [openPalette setTitleColor:[UIColor colorNamed:@"Light Green Sea"] forState:UIControlStateNormal];
    [draw setTitleColor:[UIColor colorNamed:@"Light Green Sea"] forState:UIControlStateNormal];
    [timer setTitleColor:[UIColor colorNamed:@"Light Green Sea"] forState:UIControlStateNormal];
    [share setTitleColor:[UIColor colorNamed:@"Light Green Sea"] forState:UIControlStateNormal];
    
    [openPalette.layer setBorderWidth:1];
    [draw.layer setBorderWidth:1];
    [timer.layer setBorderWidth:1];
    [share.layer setBorderWidth:1];
    
    [openPalette.layer setCornerRadius:10];
    [draw.layer setCornerRadius:10];
    [timer.layer setCornerRadius:10];
    [share.layer setCornerRadius:10];
    
    [openPalette.layer setShadowColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor];
    [draw.layer setShadowColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor];
    [timer.layer setShadowColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor];
    [share.layer setShadowColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.25].CGColor];
    
    [openPalette.layer setBorderColor:[[UIColor grayColor] colorWithAlphaComponent:0.4].CGColor];
    [draw.layer setBorderColor:[[UIColor grayColor] colorWithAlphaComponent:0.4].CGColor];
    [timer.layer setBorderColor:[[UIColor grayColor] colorWithAlphaComponent:0.4].CGColor];
    [share.layer setBorderColor:[[UIColor grayColor] colorWithAlphaComponent:0.4].CGColor];
    
    [self.view addSubview:openPalette];
    [self.view addSubview:draw];
    [self.view addSubview:timer];
    [self.view addSubview:share];
    
}

- (void)addAnimationView {
    AnimationView *animationView = [[AnimationView alloc] initWithFrame:CGRectMake(38, 104, 300, 300)];
    
    [self.view addSubview:animationView];
    

//    self.myImage = @"Head";
    animationView.currentImage = self.myImage;
//    self.myImage = @"Landscape";
//    animationView.currentImage = self.myImage;

    NSLog(@"%@", self.changeVC.myImage);
    NSLog(@"%@", self.myImage);
    
}

- (void) setupNavigationItems {
    self.navigationItem.title = @"Artist";
    
    
    
    UIBarButtonItem *drawings = [[UIBarButtonItem alloc] initWithTitle: @"Drawings"
                                                                 style:UIBarButtonItemStylePlain
                                                                target:self
                                                                action:@selector(drawing:)];
    
    
    
    

    
    
    self.navigationItem.rightBarButtonItem = drawings;
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{
        NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17]
    }];
    
    [drawings setTitleTextAttributes:@{
        NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17] }
                                                          forState:UIControlStateNormal];
    
    [drawings setTitleTextAttributes:@{
        NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17] }
                                                          forState:UIControlStateHighlighted];

    drawings.tintColor = [UIColor colorNamed:@"Light Green Sea"];
    
}



-(void)drawing:(id)sender {
    
    [self.navigationController pushViewController:self.changeVC animated:YES];
    
    
//    [self.navigationController pushViewController:self.drawings animated:YES];
}


@end
