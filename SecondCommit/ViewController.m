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
    NSThread *thread=[[NSThread alloc]initWithTarget:self selector:@selector(thread) object:nil];
    [thread start];
  
    
    
}
-(void)thread{
    [[NSRunLoop currentRunLoop]addTimer:[NSTimer timerWithTimeInterval:2 target:self selector:@selector(hehe) userInfo:nil repeats:YES] forMode:NSDefaultRunLoopMode];
    [[NSRunLoop currentRunLoop]run];
}
-(void)hehe{
    NSLog(@"hehe");

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
