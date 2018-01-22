//
//  XViewController.m
//  AllowPanGestureEventPass
//
//  Created by canoe on 2018/1/22.
//  Copyright © 2018年 canoe. All rights reserved.
//

#import "XViewController.h"
#import "XScrollViewController.h"

@interface XViewController ()

@end

@implementation XViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view.
    UIButton *next = [UIButton buttonWithType:UIButtonTypeSystem];
    next.frame = CGRectMake(0, 0, 100, 100);
    next.center = self.view.center;
    [next setTitle:@"next step" forState:UIControlStateNormal];
    [next addTarget:self action:@selector(nextButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:next];
    
}

-(void)nextButtonClick
{
    XScrollViewController *vc = [[XScrollViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
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
