//
//  BlockBaseViewController.m
//  Block
//
//  Created by GG on 16/1/15.
//  Copyright © 2016年 王立广. All rights reserved.
//

#import "BlockBaseViewController.h"

@interface BlockBaseViewController ()
{
#pragma mark 1、声明一个block
    /*
     
     * 声明一个block
     
     * 格式：返回值类型 (^block名字)(参数类型)
     
     *
     */
    int (^oneFrom)(int,int);
}
@end

@implementation BlockBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"block基础";
    
    int a = 6;
    int b = 5;
    
    /*
     * 采用正常方式实现一个整数相加功能
     
     * 此时如果我想换成减法，我得在方法normalMethodSumCompute的内部进行修改。
     
     */
    
    [self normalMethodSumCompute:a Withb:b];
    
    
    /*
     * 采用block方式实现一个整数相加的功能
     
     * 此时我不需要修改方法blockMethod内的任何东西，只需在将这个oneFrom中的加号改为减号
     
     */
#pragma mark 2、将声明的block给实现,a和b就是传进来的参数，在这里对传进来的参数进行操作，如果声明block时设置返回值了，就需要return。什么时候执行oneFrome什么时候执行里面的代码块。
    
    /*
     * 定义Block变量，就相当于定义了一个方法。但是区别也很明显，因为方法肯定是在方法外面定义，不能在方法内定义，而Block变量定义在了方法内部
     */
    oneFrom = ^(int a,int b){
        
        return a+b;
        
    };
    [self blockMethod:a Withb:b];
    
}

- (void)normalMethodSumCompute:(int)a Withb:(int)b{
    
    int sum = a+b;
    
    NSLog(@"正常方式   a+b=%d",sum);
    
}

- (void)blockMethod:(int)a Withb:(int)b{
    
#pragma mark 3、调用我声明的block，并给block参数。
    int sum = oneFrom(a,b);
    
    NSLog(@"block方式  a+b=%d",sum);
}

#pragma mark block基础用法总结
/*
 
 * 1、声明一个block
     格式：返回值类型 (^block名字)(参数类型)
 
 * 2、将block给实现
     格式：block名字 = ^(参数类型 参数名){
 
     }
 
 * 3、调用block
      通过block来执行里面的代码块。
 
 */



@end
