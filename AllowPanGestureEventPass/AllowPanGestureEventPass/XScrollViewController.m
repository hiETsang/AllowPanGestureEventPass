//
//  XScrollViewController.m
//  AllowPanGestureEventPass
//
//  Created by canoe on 2018/1/22.
//  Copyright © 2018年 canoe. All rights reserved.
//

#import "XScrollViewController.h"
#import "UIScrollView+X.h"

// MainScreen Height&Width
#define KScreenHeight      [[UIScreen mainScreen] bounds].size.height
#define KScreenWidth       [[UIScreen mainScreen] bounds].size.width

@interface XScrollViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation XScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    scrollView.pagingEnabled = YES;
    [self.view addSubview:scrollView];
    
    UITableView *tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, KScreenWidth, KScreenHeight) style:UITableViewStylePlain];
    tableView1.delegate = self;
    tableView1.dataSource = self;
    [scrollView addSubview:tableView1];
    
    UITableView *tableView2 = [[UITableView alloc] initWithFrame:CGRectMake(KScreenWidth, 0, KScreenWidth, KScreenHeight) style:UITableViewStylePlain];
    tableView2.delegate = self;
    tableView2.dataSource = self;
    [scrollView addSubview:tableView2];
    
    scrollView.contentSize = CGSizeMake(KScreenWidth * 2, 0);
    
    scrollView.allowPanGestureEventPass = YES;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = @"test";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
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
