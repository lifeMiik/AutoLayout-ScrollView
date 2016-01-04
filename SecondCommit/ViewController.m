//
//  ViewController.m
//  SecondCommit
//
//  Created by lifeMiik on 15/12/29.
//  Copyright © 2015年 lifeMiik. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor yellowColor];
    
     NSLog(@"Second Commit!!");
    
  
    
    
}
- (IBAction)clicked {
    TestViewController *vc=[[TestViewController alloc]initWithNibName:@"TestViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
