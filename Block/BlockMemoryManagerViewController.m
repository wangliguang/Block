//
//  BlockMemoryManagerViewController.m
//  Block
//
//  Created by GG on 16/1/15.
//  Copyright © 2016年 王立广. All rights reserved.
//

#import "BlockMemoryManagerViewController.h"
@interface BlockMemoryManagerViewController ()
{
    void (^myBlock)(NSString *str);
}

@property (nonatomic,retain) UIImageView *imageView;

@end

@implementation BlockMemoryManagerViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"block的内存管理";

    
    /*
     
       1、只有在使用局部变量时，block会复制指针，且强引用指针指向的对象一次。其它如全局变量、static变量、block变量等，block不会拷贝指针,只会强引用指针指向的对象一次。
     
       2、咱们在声明block属性时要使用copy,避免互相影响。就好比字符串的copy
     
       3、block copy时会对block中的对象强引用，容易造成循环引用，致使对象无法释放，所以在block中用到的对象用使用__weak修饰，避免循环引用。
     
       4、如果想要在block中改变block外变量的值，要使用__block修饰(一般用于基本数据类型)
     
       5、如果想要避免对象间的循环引用，就要使用__weak来修饰该对象。
     
     */
    
    __block int clickNum = 0;
    
    __weak BlockMemoryManagerViewController *weakSelf = self;
    
    myBlock = ^(NSString *str){
        
        NSString *clickStr = [str stringByAppendingFormat:@"%d",++clickNum];
        
        weakSelf.imageView.image = nil;
        
        NSLog(@"%@",clickStr);
    };
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
 
    myBlock(@"我点击了屏幕");
}




@end
