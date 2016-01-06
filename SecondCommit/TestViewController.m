//
//  TestViewController.m
//  SecondCommit
//
//  Created by lifeMiik on 15/12/30.
//  Copyright © 2015年 lifeMiik. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *photoView;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (nonatomic,strong) UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UILabel *positonLabel;
@property (weak, nonatomic) IBOutlet UITextField *timeTextFild;
@property (weak, nonatomic) IBOutlet UILabel *utilLabel;
@property (weak, nonatomic) IBOutlet UIButton *notSpecial;
@property (weak, nonatomic) IBOutlet UIButton *male;
@property (weak, nonatomic) IBOutlet UIButton *female;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
      UILabel *label=[[UILabel alloc]init];
    label.frame=CGRectMake(0, 81, 320, 120);
    label.backgroundColor=[UIColor greenColor];
    [self.photoView addSubview:label];
    [self configView];

}
-(void)configView{
    self.textView.delegate=self;
    self.datePicker=[[UIDatePicker alloc]init];
    NSLocale *locale=[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    self.datePicker.locale=locale;
    self.datePicker.datePickerMode=UIDatePickerModeDateAndTime;
    [self.datePicker setMinimumDate:[NSDate date]];
    self.timeTextFild.inputView=self.datePicker;
    UIToolbar *toolBar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    // 選取日期完成鈕 並給他一個 selector
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self
                                                                          action:@selector(cancelPicker)];
    // 把按鈕加進 UIToolbar
    toolBar.items = [NSArray arrayWithObject:right];
    // 以下這行也是重點 (螢光筆畫兩行)
    // 原本應該是鍵盤上方附帶內容的區塊 改成一個 UIToolbar 並加上完成鈕
    self.timeTextFild.inputAccessoryView = toolBar;




}
-(void)textViewDidBeginEditing:(UITextView *)textView{
    
    textView.text=@"";
    textView.textColor=[UIColor darkTextColor];

}
-(void)cancelPicker{
    if ([self.view endEditing:NO]) {
        // 以下幾行是測試用 可以依照自己的需求增減屬性
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd HH:mm"];
        NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/beijing"];
        [formatter setTimeZone:timeZone];
        // 將選取後的日期 填入 UITextField
        self.timeTextFild.text = [NSString stringWithFormat:@"%@",[formatter stringFromDate:self.datePicker.date]];
        
    }



}
- (IBAction)selectedService {
    NSLog(@"selected The serveice");
}
- (IBAction)selectedPosition {
     NSLog(@"selected The position");
}
- (IBAction)optionalUtil:(UIButton *)sender {
    sender.selected=!sender.selected;
    if (sender.selected) {
        self.utilLabel.textColor=[UIColor darkTextColor];
        
    }else{
        self.utilLabel.textColor=[UIColor grayColor];
    }
}


- (IBAction)selectedSex:(UIButton *)sender {
    
    if([sender isEqual:self.notSpecial]){
        [self.male setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.female setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        
        [self.male setBackgroundImage:[UIImage imageNamed:@"_InputUnSelectedprice.png"] forState:UIControlStateNormal];
        [self.female setBackgroundImage:[UIImage imageNamed:@"_InputUnSelectedprice.png"] forState:UIControlStateNormal];
        
    }
    else if([sender isEqual:self.male]){
        
        [self.female setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.notSpecial setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.female setBackgroundImage:[UIImage imageNamed:@"_InputUnSelectedprice.png"] forState:UIControlStateNormal];
        [self.notSpecial setBackgroundImage:[UIImage imageNamed:@"_InputUnSelectedprice.png"] forState:UIControlStateNormal];
        
    }
    else if([sender isEqual:self.female]){
        [self.male setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.notSpecial setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.notSpecial setBackgroundImage:[UIImage imageNamed:@"_InputUnSelectedprice.png"] forState:UIControlStateNormal];
        [self.male setBackgroundImage:[UIImage imageNamed:@"_InputUnSelectedprice.png"] forState:UIControlStateNormal];
        
    }

}



@end
