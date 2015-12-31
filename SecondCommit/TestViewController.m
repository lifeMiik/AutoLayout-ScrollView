//
//  TestViewController.m
//  SecondCommit
//
//  Created by lifeMiik on 15/12/30.
//  Copyright © 2015年 lifeMiik. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *BGView;


@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.scrollView setContentSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, self.BGView.frame.size.height)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
