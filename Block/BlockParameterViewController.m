//
//  BlockParameterViewController.m
//  Block
//
//  Created by GG on 16/1/15.
//  Copyright © 2016年 王立广. All rights reserved.
//

#import "BlockParameterViewController.h"

#pragma mark --------------------将block作为参数的方式2---------------------
#pragma mark 1、通过这种方式将申明那一大堆用一个TwoFrame代替，其实也就相当于将这个block变为一个数据类型。
//typedef在计算机编程语言中用来为复杂的声明定义简单的别名
typedef int (^TwoFrame)(int a,int b);

@interface BlockParameterViewController ()


#pragma mark 2、通过步骤1创建的block数据类型申明一个对象
@property (nonatomic,assign) TwoFrame twoFrame;


@end

@implementation BlockParameterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"block作为参数";
    
    
#pragma mark 4、调用咱们第三步写的方法
    [self blockParmeter:^int(int a, int b) {
     
        return a+b;
        
    }];
    
    [self blockParmeter:^int(int a, int b) {
        
        return a-b;
    }];
    
    [self blockParmeter:^int(int a, int b) {
        
        return a*b;
    }];
    
    
}

#pragma mark 3、实现一个带block参数的方法
- (void)blockParmeter:(TwoFrame )twoFrame{
    
    NSLog(@"%d",twoFrame(1,2));
    
}


#pragma mark ----------------将block作为参数的方式1-------------------------
- (void)blockParameterTwo:(void (^)())clickView{
    
    clickView();
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self blockParameterTwo:^() {
        
        NSLog(@"我点击了屏幕");
        
    }];

}


@end
