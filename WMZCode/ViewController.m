//
//  ViewController.m
//  WMZCode
//
//  Created by wmz on 2018/12/14.
//  Copyright © 2018年 wmz. All rights reserved.
//

#import "ViewController.h"
#import "WMZCodeView.h"
@interface ViewController ()

@property(nonatomic,strong)WMZCodeView *codeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     //使用方法
     self.codeView = [[WMZCodeView sharedInstance] addCodeViewWithFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 50)  withBlock:^(BOOL success) {
         if (success) {
             NSLog(@"成功");
         }
     }];
     
    [self.view addSubview:self.codeView];    
}

@end
