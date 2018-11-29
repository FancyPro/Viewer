//
//  ViewController.m
//  Viewer
//
//  Created by Fancy on 2018/11/16.
//  Copyright © 2018年 Fancy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //NSLog(@"%@",self.view);
    UIStoryboard* First = [UIStoryboard storyboardWithName:@"LaunchScreen" bundle:nil];
    ViewController* FirstVC = [First instantiateInitialViewController];
    LaunchView = FirstVC.view;
    LaunchView.frame = self.view.frame;
    [self.view addSubview:LaunchView];
    
    FirstView = [[UIView alloc] initWithFrame:self.view.frame];
    FirstView.backgroundColor = UIColor.whiteColor;
    Text = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
    Text.text = @"This New World!";
    Text.textColor = UIColor.brownColor;
    //NSLog(@"x:%f,y:%f,width:%f,height:%f",text.frame.origin.x,text.frame.origin.y,text.frame.size.width,text.frame.size.height);
    CGRect best = [Text textRectForBounds:Text.frame limitedToNumberOfLines:0];
    Text.frame = CGRectMake((self.view.frame.size.width-best.size.width)/2,(self.view.frame.size.height-best.size.height)/2,best.size.width,best.size.height);
    //NSLog(@"x:%f,y:%f,width:%f,height:%f",text.frame.origin.x,text.frame.origin.y,text.frame.size.width,text.frame.size.height);
    [FirstView addSubview:Text];
    
    [self.view addSubview:FirstView];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    FirstView.frame = self.view.frame;
    LaunchView.frame = self.view.frame;
    CGRect best = [Text textRectForBounds:Text.frame limitedToNumberOfLines:0];
    Text.frame = CGRectMake((self.view.frame.size.width-best.size.width)/2,(self.view.frame.size.height-best.size.height)/2,best.size.width,best.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
