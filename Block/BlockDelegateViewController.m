//
//  BlockAndDelegateViewController.m
//  Block
//
//  Created by GG on 16/1/15.
//  Copyright © 2016年 王立广. All rights reserved.
//

#import "BlockDelegateViewController.h"
#import "DelegateTapLabel.h"
#import "BlockTapLabel.h"
@interface BlockDelegateViewController ()<TapLabelDelegate>

@end

@implementation BlockDelegateViewController

/*
 
 *  我采用两种方式自定义了一个能够被点击的Label
 
 *  DelegateTapLabel: 采用代理来监听Label的点击事件
 
 *  BlockTapLabel:采用block来监听Label的点击事件
 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //采用代理自定义的一个能够被点击的label
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"block与delegate";
    DelegateTapLabel *delegateLable = [[DelegateTapLabel alloc]initWithFrame:CGRectMake(kMargin, kMargin, kScreenWidth-kMargin*2, 50)];
    delegateLable.text = @"我是代理,有种你点我啊";
    delegateLable.layer.cornerRadius = 5;
    delegateLable.layer.masksToBounds = YES;
    delegateLable.delegate = self;
    delegateLable.textAlignment = NSTextAlignmentCenter;
    delegateLable.textColor = [UIColor whiteColor];
    delegateLable.backgroundColor = [UIColor grayColor];
    [self.view addSubview:delegateLable];
    
    
    //采用block自定义的一个能够被点击的label
    BlockTapLabel *blockTapLabel = [[BlockTapLabel alloc]initWithFrame:CGRectMake(kMargin, kMargin*2, kScreenWidth-kMargin*2, 50)];
    blockTapLabel.text = @"我是block,有种你点我啊";
    blockTapLabel.layer.cornerRadius = 5;
    blockTapLabel.layer.masksToBounds = YES;
    blockTapLabel.textAlignment = NSTextAlignmentCenter;
    blockTapLabel.textColor = [UIColor whiteColor];
    blockTapLabel.backgroundColor = [UIColor grayColor];
    [self.view addSubview:blockTapLabel];
    

    //将点击label想要执行的代码传到BlockTapLabel里
    [blockTapLabel clickLabel:^() {
     
        NSLog(@"block也认为你有种");
        
    }];
    
}

#pragma TapLabelDelegate
- (void)tapLabel{
    
    NSLog(@"delegate认为你有种");
    
}




@end
