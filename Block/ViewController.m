//
//  ViewController.m
//  Block
//
//  Created by GG on 16/1/15.
//  Copyright © 2016年 王立广. All rights reserved.
//

#import "ViewController.h"
#import "BlockBaseViewController.h"
#import "BlockParameterViewController.h"
#import "BlockDelegateViewController.h"
#import "BlockMemoryManagerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"block";
 
    //block基础按钮
    UIButton *blockSimpleBtn = [[UIButton alloc]initWithFrame:CGRectMake(kMargin, kMargin,kScreenWidth-kMargin*2 , 50)];
    [blockSimpleBtn setTitle:@"block基础" forState:UIControlStateNormal];
    [self.view addSubview:blockSimpleBtn];
    [blockSimpleBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    blockSimpleBtn.backgroundColor = [UIColor grayColor];
    blockSimpleBtn.layer.cornerRadius = 5;
    blockSimpleBtn.layer.masksToBounds = YES;
    [blockSimpleBtn addTarget:self action:@selector(simpleblock) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    //block作为参数
    UIButton *blockParameterBtn = [[UIButton alloc]initWithFrame:CGRectMake(kMargin, kMargin+kMargin,kScreenWidth-kMargin*2 , 50)];
    [blockParameterBtn setTitle:@"block作为参数" forState:UIControlStateNormal];
    [self.view addSubview:blockParameterBtn];
    [blockParameterBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    blockParameterBtn.backgroundColor = [UIColor grayColor];
    blockParameterBtn.layer.cornerRadius = 5;
    blockParameterBtn.layer.masksToBounds = YES;
    [blockParameterBtn addTarget:self action:@selector(parameterblock) forControlEvents:UIControlEventTouchUpInside];
    
    //block与代理
    UIButton *blockDelegareBtn = [[UIButton alloc]initWithFrame:CGRectMake(kMargin, kMargin+kMargin+kMargin,kScreenWidth-kMargin*2 , 50)];
    [blockDelegareBtn setTitle:@"block与delegate" forState:UIControlStateNormal];
    [self.view addSubview:blockDelegareBtn];
    [blockDelegareBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    blockDelegareBtn.backgroundColor = [UIColor grayColor];
    blockDelegareBtn.layer.cornerRadius = 5;
    blockDelegareBtn.layer.masksToBounds = YES;
    [blockDelegareBtn addTarget:self action:@selector(blockDelegate) forControlEvents:UIControlEventTouchUpInside];
    
    
    //block的内存管理
    UIButton *blockMemoryManagerBtn = [[UIButton alloc]initWithFrame:CGRectMake(kMargin, kMargin+kMargin+kMargin+kMargin,kScreenWidth-kMargin*2 , 50)];
    [blockMemoryManagerBtn setTitle:@"block的内存管理" forState:UIControlStateNormal];
    [self.view addSubview:blockMemoryManagerBtn];
    [blockMemoryManagerBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    blockMemoryManagerBtn.backgroundColor = [UIColor grayColor];
    blockMemoryManagerBtn.layer.cornerRadius = 5;
    blockMemoryManagerBtn.layer.masksToBounds = YES;
    [blockMemoryManagerBtn addTarget:self action:@selector(blockMemoryManager) forControlEvents:UIControlEventTouchUpInside];
    
    
}

#pragma mark 各种事件
- (void)simpleblock{
    
    BlockBaseViewController *blockbaseVC = [[BlockBaseViewController alloc]init];
    
    [self.navigationController pushViewController:blockbaseVC animated:YES];
    
}

- (void)parameterblock{
    
    BlockParameterViewController *blockParameterVC = [[BlockParameterViewController alloc]init];
    
    [self.navigationController pushViewController:blockParameterVC animated:YES];
}

- (void)blockDelegate{
    
    BlockDelegateViewController *blockDelegateVC = [[BlockDelegateViewController alloc]init];
    
    [self.navigationController pushViewController:blockDelegateVC animated:YES];
    
}

- (void)blockMemoryManager{
    
    BlockMemoryManagerViewController *blockMemoryManagerVC = [[BlockMemoryManagerViewController alloc]init];
    
    [self.navigationController pushViewController:blockMemoryManagerVC animated:YES];
}

@end
