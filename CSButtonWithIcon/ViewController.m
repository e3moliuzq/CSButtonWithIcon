//
//  ViewController.m
//  CSButtonWithIcon
//
//  Created by e3mo on 16/5/4.
//  Copyright © 2016年 e3mo. All rights reserved.
//

#import "ViewController.h"
#import "ButtonWithIcon.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    
    ButtonWithIcon *btn0 = [[ButtonWithIcon alloc] initWithFrame:CGRectMake(30, 50, 60, 80) haveLabel:YES];
    btn0.downlabel.text = @"圆角按钮";//label text
    [btn0 setIconLabelText:@"99+"];//icon label text
    [btn0 setBaseImage:@"geography.png" highlightImage:nil];//set image
    [btn0 setDownLabelColor:[UIColor darkGrayColor] highlightColor:[UIColor blackColor]];//set label color
    [btn0 setIconBgColor:[UIColor yellowColor] highlightColor:[UIColor colorWithRed:0.8 green:0.8 blue:0 alpha:1.f]];//set icon bg color
    [btn0 setIconLabelColor:[UIColor darkGrayColor] highlightColor:[UIColor blackColor]];//set icon label color
    [btn0 addTarget:self action:@selector(btn0Touched:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn0];
    
    
    
    ButtonWithIcon *btn1 = [[ButtonWithIcon alloc] initWithFrame:CGRectMake(120, 50, 150, 80) imageSize:CGSizeMake(60, 60) mode:NO];
    btn1.downlabel.text = @"直角自定义图片大小按钮";//label text
    [btn1 setIconLabelText:@"99"];//icon label text @设定为@" "则是一个圆点
    [btn1 setBaseImage:@"command_line.png" highlightImage:@"command_line_press.png"];//set image
    [btn1 setDownLabelColor:[UIColor darkGrayColor] highlightColor:nil];//set label color
    [btn1 setIconBgColor:[UIColor redColor] highlightColor:nil];//set icon bg color
    [btn1 setIconLabelColor:[UIColor yellowColor] highlightColor:nil];//set icon label color
    [self.view addSubview:btn1];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)btn0Touched:(id)sender {
    ButtonWithIcon *btn = (ButtonWithIcon*)sender;
    if (btn.iconlabel.text && btn.iconlabel.text.length > 0) {
        [btn setIconLabelText:nil];
    }
    else {
        [btn setIconLabelText:@"99+"];
    }
}

@end
