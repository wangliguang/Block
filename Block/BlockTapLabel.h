//
//  BlockTapLabel.h
//  Block
//
//  Created by GG on 16/1/15.
//  Copyright © 2016年 王立广. All rights reserved.
//

#import <UIKit/UIKit.h>

//1、通过这种方式将申明那一大堆用一个ClickLabelBlock代替
typedef void (^ClickLabelBlock)();


@interface BlockTapLabel : UILabel

//2、准备一个用来接收传进来的block代码块,ps:把block定义为属性必须使用copy,内存管理部分会讲到
@property (nonatomic,copy) ClickLabelBlock clickLabel;

//3、声明一个参数为block代码块的方法
- (void)clickLabel:(ClickLabelBlock) clickLabel;

@end
